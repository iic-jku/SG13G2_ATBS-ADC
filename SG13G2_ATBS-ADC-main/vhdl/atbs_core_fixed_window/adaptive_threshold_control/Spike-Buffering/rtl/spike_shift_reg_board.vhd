-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 02.11.2022
-- Description: board wrapper of spike_shift_reg_ea
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.AdaptiveCtrlSimVals.all;
use work.adaptive_std.all;
use work.all;

entity spike_shift_reg_board is
  port(
    clock_i 	      : in std_ulogic;
    reset_n_i       : in std_ulogic;
    overflow_strb_i : in std_ulogic;
    curr_time_i     : in unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);
    spike_i         : in std_ulogic;
    spike_strb_i    : in std_ulogic;
    
    spikes_o        : out T_SPIKES;
    spikes_strb_o   : out std_ulogic
  );
end entity;

architecture rtl of spike_shift_reg_board is

-- Constants
constant WIN_BITS : natural := TIME_COUNTER_BITWIDTH + 1;
constant ATBS_WIN_LENGTH_1 : natural := natural(8000);  -- 1ms
constant ATBS_WIN_LENGTH_2 : natural := natural(16000); -- 2ms
constant ATBS_WIN_LENGTH_4 : natural := natural(32000); -- 4ms
constant ATBS_WIN_LENGTH_8 : natural := natural(64000); -- 8ms

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset				: std_ulogic;
signal win_length   : unsigned(WIN_BITS - 1 downto 0);
begin

  -- Inverting Input Logic
  reset <= not reset_n_i;
  
  -- Embed Spike-Shift-Register
  win_length <= to_unsigned(ATBS_WIN_LENGTH_4, WIN_BITS);  -- 4ms
  
  spike_shift_reg_0: entity spike_shift_reg(rtl)
  generic map(
    WIN_BITS              => WIN_BITS,
    TIME_COUNTER_BITWIDTH => TIME_COUNTER_BITWIDTH
  )
  port map(
    clock_i 	      => clock_i, 	      
    reset_i         => reset,         
    overflow_strb_i => overflow_strb_i,	
    curr_time_i     => curr_time_i,     
    spike_i         => spike_i,         
    spike_strb_i    => spike_strb_i,
    win_length_i    => win_length,
    
    spikes_o        => spikes_o,        
    spikes_strb_o   => spikes_strb_o   
  );
  -- =====================================================
end;