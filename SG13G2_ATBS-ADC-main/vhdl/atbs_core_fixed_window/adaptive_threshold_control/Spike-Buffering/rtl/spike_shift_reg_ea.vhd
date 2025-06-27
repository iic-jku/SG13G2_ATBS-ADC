-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 11.10.2022
-- Description: spike buffering over time window to calculate weyls discrepancy
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.adaptive_std.all;
use work.all;

entity spike_shift_reg is
  generic(
    WIN_BITS : natural;
    TIME_COUNTER_BITWIDTH : natural
  );
  port(
    clock_i 	      : in std_ulogic;
    reset_i         : in std_ulogic;
    overflow_strb_i : in std_ulogic;
    curr_time_i     : in unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);
    spike_i         : in std_ulogic;
    spike_strb_i    : in std_ulogic;
    win_length_i    : in unsigned(WIN_BITS - 1 downto 0);
    
    spikes_o        : out T_SPIKES;
    spikes_strb_o   : out std_ulogic
  );
end entity;

architecture rtl of spike_shift_reg is

-- Constants and type definitions
constant T_MAX    : natural := 2**TIME_COUNTER_BITWIDTH;

type T_TIME_REG is array (N_SPIKES - 1 downto 0) of unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);
type T_WINDOW is array (N_SPIKES - 1 downto 0) of unsigned(WIN_BITS - 1 downto 0);
type T_OVERFLOW is array (N_SPIKES - 1 downto 0) of std_ulogic;

-- Signals
signal timestamps           : T_TIME_REG;
signal next_timestamps      : T_TIME_REG;
signal spikes               : T_SPIKES;
signal next_spikes          : T_SPIKES;
signal win_end              : T_WINDOW;
signal overflow_marker      : T_OVERFLOW;
signal next_overflow_marker : T_OVERFLOW;
signal spikes_strb          : std_ulogic;
signal next_spikes_strb     : std_ulogic;
    
begin
  
  reg_proc: process(clock_i, reset_i) is
  begin
    if reset_i = '1' then
     spikes <= (others => (others => '0'));
     timestamps <= (others => (others => '0'));
     overflow_marker <= (others => '0');
     spikes_strb <= '0';
    elsif rising_edge(clock_i) then
     spikes <= next_spikes;
     timestamps <= next_timestamps;
     overflow_marker <= next_overflow_marker;
     spikes_strb <= next_spikes_strb;
    end if;
  end process;
  -- =====================================================
  
  spikes_shift_logic: process(spike_strb_i, spike_i, curr_time_i, overflow_strb_i, win_end, overflow_marker, timestamps, spikes) is
  begin
    -- default assignment
    next_spikes <= spikes;
    next_timestamps <= timestamps;
    next_overflow_marker <= overflow_marker;
    next_spikes_strb <= '0'; 
    
    -- if counter overflow occurs mark all previous saved data
    if overflow_strb_i = '1' then
      next_overflow_marker <= (others => '1');
    end if;
    
    if spike_strb_i = '1' then
      for i in 1 to N_SPIKES - 1 loop
        -- shift 
        next_spikes(i) <= spikes(i-1);
        next_timestamps(i) <= timestamps(i-1);
        next_overflow_marker(i) <= overflow_marker(i-1);
      end loop;
      -- prepend new data
      next_spikes(0)(0) <= spike_i;
      next_spikes(0)(1) <= not spike_i;
      next_timestamps(0) <= curr_time_i;
      next_overflow_marker(0) <= '0';
      next_spikes_strb <= '1';
    else
      for i in 0 to N_SPIKES - 1 loop
        -- win_end(i) /= win_length_i otherwise spike strobe is set even if deleted register was already empty
        if curr_time_i >= win_end(i) then
          -- reset register if spike falls out of window with next clock cycle (>=)
          next_spikes(i) <= (others => '0');
        end if;
      end loop;
    end if;
  end process spikes_shift_logic;
  -- =====================================================

  end_of_window_logic: process(overflow_marker, timestamps, win_length_i) is
  variable virt_win_end : T_WINDOW;
  variable carry : std_ulogic_vector(0 to N_SPIKES - 1);
  begin
    for i in 0 to N_SPIKES - 1 loop
      virt_win_end(i) := resize(resize(timestamps(i), WIN_BITS) + win_length_i, WIN_BITS);
      if overflow_marker(i) = '1' then
        carry(i) := '0';
      else
        carry(i) := virt_win_end(i)(WIN_BITS-1);
      end if;
      win_end(i) <= unsigned(carry(i) & std_ulogic_vector(virt_win_end(i)(WIN_BITS - 2 downto 0)));
    end loop;
  end process end_of_window_logic;
  -- =====================================================
  
  -- Concurrent output statements
  spikes_strb_o <= spikes_strb;
  spikes_o <= spikes;
  -- =====================================================
end;