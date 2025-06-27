-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements the board wrapper of the DAC control entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

library work;
use work.all;

entity spike_detector_board is
	port(
		clock_i				                : in std_ulogic;
		reset_n_i				              : in std_ulogic;
    
    detection_en_i                : in std_ulogic;    -- disable entity / detection
		comp_upper_i                  : in std_ulogic;    -- synchronized upper comparator output
		comp_lower_i                  : in std_ulogic;    -- synchronized lower comparator output
    change_upper_strb_i           : in std_ulogic;    -- strb for changing upper voltage
    change_lower_strb_i           : in std_ulogic;    -- strb for changing lower voltage
    stopped_changing_upper_strb_i : in std_ulogic;    -- strb from upper DAC control entity
    stopped_changing_lower_strb_i : in std_ulogic;    -- strb from lower DAC control entity
    increasing_en_i               : in std_ulogic;    -- disable increasing voltage after clipping to upper limit
    decreasing_en_i               : in std_ulogic;    -- disable decreasing voltage after clipping to lower limit
    pause_detection_strb_i        : in std_ulogic;  	-- disable detection until external triggered changing is done

		spike_o 			                : out std_ulogic;
		spike_strb_o		              : out std_ulogic
	);
end entity spike_detector_board;

architecture rtl of spike_detector_board is

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset 				    : std_ulogic;

begin
	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed spike detector
	spike_detector_0: entity spike_detector(rtl)
	port map(
		clock_i				                => clock_i,
		reset_i				                => reset,
		
    detection_en_i                => detection_en_i,
		comp_upper_i                  => comp_upper_i,
		comp_lower_i                  => comp_lower_i,
    change_upper_strb_i           => change_upper_strb_i,
    change_lower_strb_i           => change_lower_strb_i,
    stopped_changing_upper_strb_i => stopped_changing_upper_strb_i,
    stopped_changing_lower_strb_i => stopped_changing_lower_strb_i,
    increasing_en_i               => increasing_en_i,
    decreasing_en_i               => decreasing_en_i,
    pause_detection_strb_i        => pause_detection_strb_i,

		spike_o 			                => spike_o,
		spike_strb_o	                => spike_strb_o
	);
	-- =====================================================
end architecture rtl;