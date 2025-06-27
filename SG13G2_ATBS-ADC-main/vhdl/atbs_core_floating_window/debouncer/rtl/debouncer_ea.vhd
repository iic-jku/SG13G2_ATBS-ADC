-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 29.06.2024
-- Description: This .vhd file implements a debouncer for bouncing input signals.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity debouncer is
	generic(
		DEBOUNCER_BITWIDTH  : natural;
		DEBOUNCER_MAX			  : natural
	);
	port(
		clock_i		          : in std_ulogic;
		reset_i		          : in std_ulogic;
		bouncing_i		      : in std_ulogic;
		
		debounced_o		      : out std_ulogic
	);
end entity debouncer;
	
architecture rtl of debouncer is

-- Internal signals
-- Synchronization Chain
signal bouncing_sync      : std_ulogic;

-- Rising Edge Detection
signal bouncing_sync_d    : std_ulogic;
signal bouncing_edge_r    : std_ulogic;
signal bouncing_edge_f    : std_ulogic;

-- Counter signals
signal reset_counter_strb : std_ulogic;
signal counter_value 	  	: unsigned(DEBOUNCER_BITWIDTH - 1 downto 0);
signal next_counter_value : unsigned(DEBOUNCER_BITWIDTH - 1 downto 0);

-- FSM State signals
type TState is (debouncer_idle, debouncer_wait_low, debouncer_wait_high);
signal state 	            : TState;
signal next_state         : TState;

signal debounced          : std_ulogic;
signal next_debounced     : std_ulogic;

begin
	
  -- Embed Generic Synchronization Chain entity
	sync_chain_0: entity sync_chain(rtl)
	generic map (
		N_FF        => 2,
		N_CHANNELS  => 1
	)
	port map(
		clock_i     => clock_i,
		reset_i     => reset_i,
		async_i(0)  => bouncing_i,
    
    sync_o(0)   => bouncing_sync
	);
	-- =====================================================
  
  -- Falling / Rising Edge Detection for bouncing_sync
	rising_edge_proc: process(clock_i, reset_i) is
	begin
		if reset_i = '1' then
			bouncing_sync_d	<= '0';
		elsif rising_edge(clock_i) then
			bouncing_sync_d	<= bouncing_sync;
		end if;
	end process rising_edge_proc;
  
	bouncing_edge_r <= (not bouncing_sync_d) and bouncing_sync;
	bouncing_edge_f <= bouncing_sync_d and (not bouncing_sync);
	-- ============================================
  
	reg_proc: process(clock_i, reset_i)
	begin
		if reset_i = '1' then
      state <= debouncer_idle;
			counter_value <= (others => '0');
      debounced <= '0';
		elsif rising_edge(clock_i) then
      state <= next_state;
			counter_value <= next_counter_value;
      debounced <= next_debounced;
		end if;
	end process reg_proc;
	-- ============================================
	
	-- Debouncer Counter Logic
	cnt_logic: process(counter_value, reset_counter_strb)
	begin
		-- default assignment
		next_counter_value <= counter_value;
    
    if counter_value = DEBOUNCER_MAX - 1 or reset_counter_strb = '1' then
			next_counter_value <= (others => '0');
		else 
			next_counter_value <= counter_value + 1;
		end if;
    
	end process cnt_logic;
	-- ============================================
	
	-- Debouncer FSM Logic
	fsm_logic: process(state, bouncing_edge_r, bouncing_edge_f, bouncing_sync_d, counter_value, debounced) is
	begin
		-- default assignment
		next_state <= state;
		next_debounced <= debounced;
		reset_counter_strb <= '0';
    
		case state is
			-- In Idle state, the FSM waits for a input to go HIGH!
			when debouncer_idle =>
        if bouncing_edge_r = '1' then     -- rising edge occurred.
          reset_counter_strb <= '1';
					next_state <= debouncer_wait_high;
				elsif bouncing_edge_f = '1' then  -- falling edge occurred.
          reset_counter_strb <= '1';
					next_state <= debouncer_wait_low;
				end if;
				
			-- In debouncer_wait_high state, the FSM waits until DEBOUNCER_MAX is reached and 
			-- outputs a '1', if input is still HIGH!
			when debouncer_wait_high =>
				if counter_value = DEBOUNCER_MAX - 1 then
					if bouncing_sync_d = '1' then
						next_debounced <= '1';
          else
            next_debounced <= '0';
					end if;
					next_state <= debouncer_idle;
				end if;
        
      -- In debouncer_wait_low state, the FSM waits until DEBOUNCER_MAX is reached and 
			-- outputs a '0', if input is still LOW!
      when debouncer_wait_low =>
				if counter_value = DEBOUNCER_MAX - 1 then
					if bouncing_sync_d = '0' then
						next_debounced <= '0';
          else
            next_debounced <= '1';
					end if;
					next_state <= debouncer_idle;
				end if;
			when others => next_state <= debouncer_idle;
		end case;
  end process fsm_logic;
	-- ============================================
  
	-- Concurrent statement
	debounced_o <= debounced;
  -- ============================================
end architecture rtl;