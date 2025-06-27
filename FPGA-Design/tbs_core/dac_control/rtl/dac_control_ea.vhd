-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 08.10.2024
-- Description: This .vhd file implements the logic of controlling the DAC when a Threshold change occurs.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.all;

entity dac_control is
  generic(
    DELTA_STEPS_BITWIDTH      : natural;
		DAC_BITWIDTH	            : natural;
    DAC_IS_UPPPER	            : natural;        -- '1'... Upper, '0'... Lower
    DAC_SETTLING_CLKS         : natural
	);
	port(
		clock_i				            : in std_ulogic;
		reset_i				            : in std_ulogic;
    
    enable_dac_i              : in std_ulogic;  -- '1'... ON, '0'... OFF
    clear_dac_i               : in std_ulogic;  -- '1'... Normal Operation, '0'... clear DAC register
    adaptive_mode_i           : in std_ulogic;  -- SW1: TBS(0), ATBS(1)
    select_tbs_delta_steps_i  : in std_ulogic;  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    
    -- from Adaptive Control
    direction_i               : in std_ulogic;  -- '1'... increase V, '0'... decrease V
    update_dac_strb_i         : in std_ulogic;  -- delta_v_upper / lower_strb_o
		delta_steps_i             : in unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
    
    dac_counter_value_o       : out unsigned(DAC_BITWIDTH - 1 downto 0);
    dac_finished_strb_o       : out std_ulogic; -- active LOW
    
    -- to DAC
    dac_pd_o                  : out std_ulogic; -- active LOW
    dac_wr_o                  : out std_ulogic; -- active LOW
    dac_clr_o                 : out std_ulogic; -- active LOW
    dac_o	                    :	out std_ulogic_vector(DAC_BITWIDTH - 1 downto 0)
	);
end entity dac_control;
	
architecture rtl of dac_control is	

-- Constants
constant DAC_COUNTER_MAX            : natural := 2**DAC_BITWIDTH;
constant DAC_COUNTER_BITWIDTH       : natural := DAC_BITWIDTH + 1;
-- constant DAC_COUNTER_INIT           : natural := DAC_COUNTER_MAX / 2 - 1; -- depending on used DAC
constant DAC_COUNTER_INIT           : natural := natural(ceil(real(DAC_COUNTER_MAX) / real(2)));

constant SETTLING_COUNTER_BITWIDTH  : natural := natural(ceil(log2(real(DAC_SETTLING_CLKS))));

-- Internal signals
-- DAC Init. FSM
type TState is (dac_init, dac_counter);
signal state		    : TState;
signal next_state   : TState;

-- MUX
signal select_dac_value              : std_ulogic;
signal next_select_dac_value         : std_ulogic;

-- DAC Init.
signal dac_init_value           : unsigned(DAC_COUNTER_BITWIDTH - 1 downto 0);
signal next_dac_init_value      : unsigned(DAC_COUNTER_BITWIDTH - 1 downto 0);

-- DAC Counter
signal dac_counter_value        : unsigned(DAC_COUNTER_BITWIDTH - 1 downto 0);
signal next_dac_counter_value   : unsigned(DAC_COUNTER_BITWIDTH - 1 downto 0);
signal dac_counter_strb 	      : std_ulogic;
signal delayed_dac_counter_strb : std_ulogic;

signal dac_change_in_progress       : std_ulogic;
signal next_dac_change_in_progress  : std_ulogic;

-- Settling Counter
signal settling_counter_value       : unsigned(SETTLING_COUNTER_BITWIDTH - 1 downto 0);
signal next_settling_counter_value  : unsigned(SETTLING_COUNTER_BITWIDTH - 1 downto 0);

signal dac_finished_strb      : std_ulogic;

begin
  
  reg_proc: process(clock_i, reset_i) is
	begin
    if reset_i = '1' then
      state <= dac_init;
      dac_init_value <= (others => '0');
      select_dac_value <= '0';
      dac_counter_value <= (others => '0');
      dac_change_in_progress <= '0';
      settling_counter_value <= (others => '0');
		elsif rising_edge(clock_i) then
      state <= next_state;
      dac_init_value <= next_dac_init_value;
      select_dac_value <= next_select_dac_value;
			dac_counter_value <= next_dac_counter_value;
      dac_change_in_progress <= next_dac_change_in_progress;
      settling_counter_value <= next_settling_counter_value;
		end if;
	end process reg_proc;
	-- =====================================================
	
  -- FSM Logic
  dac_fsm_logic: process(state, dac_init_value, select_dac_value, adaptive_mode_i, select_tbs_delta_steps_i, update_dac_strb_i, enable_dac_i, delta_steps_i) is
  begin
		-- default assignment
    next_state <= state;
    next_dac_init_value <= dac_init_value;
    next_select_dac_value <= select_dac_value;
    
    case state is 
      when dac_init => -- only once at POR or Button Reset or after enable
        -- set DAC Init. Value for TBS or ATBS
        -- ATBS: delta_steps_i = 1 (always) --> just + 2
        -- Full DAC resolution TBS: delta_steps_i = 1 (always) --> just + 2
        -- Virtual DAC resolution TBS: delta_steps_i can change --> + 2 * delta_steps_i
        if DAC_IS_UPPPER = 1 then       -- Upper DAC
          if adaptive_mode_i = '1' then -- ATBS
            next_dac_init_value <= to_unsigned(DAC_COUNTER_INIT + 2, DAC_COUNTER_BITWIDTH);
          else                          -- TBS
            if select_tbs_delta_steps_i = '1' then  -- tbs_delta_steps = 2 * delta_steps_i
              next_dac_init_value <= to_unsigned(DAC_COUNTER_INIT, DAC_COUNTER_BITWIDTH) + shift_left(delta_steps_i, 1);
            else                                    -- tbs_delta_steps = 1
              next_dac_init_value <= to_unsigned(DAC_COUNTER_INIT + 2, DAC_COUNTER_BITWIDTH);
            end if;
          end if;
        else                            -- Lower DAC
          next_dac_init_value <= to_unsigned(DAC_COUNTER_INIT, DAC_COUNTER_BITWIDTH);
        end if;
        
        -- set MUX select for Init. DAC value
        next_select_dac_value <= '0';
        
        -- If dac_init_strb in the Main FSM is set to '1', go into dac_counter state.
        if update_dac_strb_i = '1' then
          next_state <= dac_counter;
        end if;
        
      when dac_counter =>
        -- set MUX select for Counter DAC value
        next_select_dac_value <= '1';
        
        -- If enable_dac_i is set to '0', go into dac_init state.
        if enable_dac_i = '0' then
          next_state <= dac_init;
        end if;
        
      when others => next_state <= dac_init;
    end case;
	end process dac_fsm_logic;
  -- =====================================================
  
  -- DAC Counter Logic
	dac_cnt_logic: process(dac_counter_value, direction_i, update_dac_strb_i, 
  delta_steps_i, select_dac_value, dac_init_value, state, next_state) is
	begin
		-- default assignment
		next_dac_counter_value <= dac_counter_value;
		dac_counter_strb <= '0';
    
    -- Increase or decrease DAC voltage
    if select_dac_value = '1' then
      if direction_i = '1' and update_dac_strb_i = '1' then               -- increase DAC voltage
        if (dac_counter_value + delta_steps_i) = DAC_COUNTER_MAX - 1 then -- set DAC voltage to MAX
          next_dac_counter_value <= to_unsigned(DAC_COUNTER_MAX - 1, DAC_COUNTER_BITWIDTH);
        elsif (dac_counter_value + delta_steps_i) < DAC_COUNTER_MAX - 1 then  -- increasing
          next_dac_counter_value <= dac_counter_value + delta_steps_i;
        end if;
        dac_counter_strb <= '1';
      elsif direction_i = '0' and update_dac_strb_i = '1' then            -- decrease DAC voltage
        if dac_counter_value <= delta_steps_i then    -- set DAC voltage to MIN
          next_dac_counter_value <= (others => '0');
        elsif dac_counter_value > delta_steps_i then  -- decreasing
          next_dac_counter_value <= dac_counter_value - delta_steps_i;
        end if;
        dac_counter_strb <= '1';
      else
        dac_counter_strb <= '0';
      end if;
    else
      next_dac_counter_value <= dac_init_value;
      if state = dac_init and next_state = dac_counter then
        dac_counter_strb <= '1';
      end if;
    end if;
	end process dac_cnt_logic;
  -- =====================================================
  
  dac_change_in_progress_logic: process(dac_counter_strb, settling_counter_value, dac_change_in_progress) is
	begin
		-- default assignment
    next_dac_change_in_progress <= dac_change_in_progress;
    
    if dac_counter_strb = '1' then
      next_dac_change_in_progress <= '1';
    elsif settling_counter_value = DAC_SETTLING_CLKS - 1 and dac_counter_strb = '0' then
      next_dac_change_in_progress <= '0';
    end if;
	end process dac_change_in_progress_logic;
  -- =====================================================
  
  -- Settling Counter for dac_finished_strb
  -- DAC has time to settle output voltage for DAC_SETTLING_CLKS clocks.
  settling_cnt_logic: process(dac_counter_strb, settling_counter_value) is
	begin
		-- default assignment
		next_settling_counter_value <= settling_counter_value;
		
		if settling_counter_value = DAC_SETTLING_CLKS - 1 or dac_counter_strb = '1' then
			next_settling_counter_value <= (others => '0');
		else 
			next_settling_counter_value <= settling_counter_value + 1;
		end if;
	end process settling_cnt_logic;
  
  dac_finished_strb <= '1' when (settling_counter_value = DAC_SETTLING_CLKS - 1 and dac_change_in_progress = '1') else '0';
  -- =====================================================
  
  -- Embed Delay Chain entity
  -- No Delay: dac_wr_o rising edge before dac_o changes (previous value written to DAC).
  -- 1CLK Delay: dac_wr_o rising edge directly at dac_o change (setup and hold times not valid).
  -- 2CLK Delay: dac_wr_o rising edge when dac_o has already changed (setup and hold times valid).
	sync_chain_0: entity sync_chain(rtl)
	generic map (
		N_FF        => 2,
		N_CHANNELS  => 1
	)
	port map(
		clock_i     => clock_i,
		reset_i     => reset_i,
		async_i(0)  => dac_counter_strb,
    
    sync_o(0)   => delayed_dac_counter_strb
	);
	-- =====================================================
  
  -- Concurrent statements
  dac_counter_value_o <= resize(dac_counter_value, DAC_BITWIDTH);
  dac_finished_strb_o <= dac_finished_strb;
  dac_pd_o <= enable_dac_i;
  dac_wr_o <= delayed_dac_counter_strb;
  dac_clr_o <= clear_dac_i;
  dac_o <= std_ulogic_vector(resize(dac_counter_value, DAC_BITWIDTH));
  -- =====================================================
end architecture rtl;