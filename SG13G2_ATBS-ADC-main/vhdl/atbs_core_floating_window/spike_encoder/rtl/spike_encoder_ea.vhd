-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements the spike encoder entity. It takes the current time and the produced spike 
-- and encodes it in two's complement. Afterwards, it is saved to the memory.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.all;

entity spike_encoder is 
	generic (
		TIME_COUNTER_BITWIDTH	: natural;
		DATA_BITWIDTH		      : natural
	);
	port (
		clock_i 			        : in std_ulogic;
		reset_i 			        : in std_ulogic;
		-- from SPIKE DETECTOR
		spike_i 			        : in std_ulogic;
		spike_strb_i	        : in std_ulogic;
		-- from TIME MEASUREMENT
		overflow_strb_i		    : in std_ulogic;
		curr_time_i 		      : in unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);
    
		-- to SPIKE MEMORY
		encoded_spike_o    	  : out  std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
		encoded_spike_strb_o	: out  std_ulogic
	);
end entity spike_encoder;

architecture rtl of spike_encoder is

signal encoded_spike		          : signed(DATA_BITWIDTH - 1 downto 0);
signal next_encoded_spike	        : signed(DATA_BITWIDTH - 1 downto 0);
signal encoded_spike_strb 			  : std_ulogic;
signal next_encoded_spike_strb 		: std_ulogic;
signal delayed_spike_strb         : std_ulogic;
signal next_delayed_spike_strb    : std_ulogic;
signal delayed_spike              : std_ulogic;
signal next_delayed_spike         : std_ulogic;

begin

	-- register to shorten critical path
	encoding_reg: process (reset_i, clock_i) is
	begin
		if reset_i = '1' then
			encoded_spike <= (others => '0');
      delayed_spike <= '0';
			encoded_spike_strb <= '0';
      delayed_spike_strb <= '0';
		elsif rising_edge(clock_i) then
			encoded_spike <= next_encoded_spike;
			encoded_spike_strb <= next_encoded_spike_strb;
      delayed_spike_strb <= next_delayed_spike_strb;
      delayed_spike <= next_delayed_spike;
		end if;
	end process encoding_reg;
	-- =====================================================
  
	encoding_logic: process (encoded_spike, spike_strb_i, overflow_strb_i, spike_i, curr_time_i, delayed_spike_strb, delayed_spike) is
	variable curr_time : signed(DATA_BITWIDTH - 1 downto 0);
	begin
    -- default assignment
		next_encoded_spike <= encoded_spike;
		next_encoded_spike_strb <= '0';
    next_delayed_spike_strb <= '0';
    next_delayed_spike <= '0';
    
    -- delay spike if triggered simultaneously with overflow 
    if overflow_strb_i = '1' and spike_strb_i = '1' then
      next_delayed_spike_strb <= '1';
      next_delayed_spike <= spike_i;
    end if;
    
    if overflow_strb_i = '1' then
			next_encoded_spike_strb <= '1';
			next_encoded_spike <= (others => '0');
		elsif spike_strb_i = '1' or delayed_spike_strb = '1' then            
			next_encoded_spike_strb <= '1';
			curr_time := signed(resize(curr_time_i, DATA_BITWIDTH));
      if spike_i = '1' or delayed_spike = '1' then
        next_encoded_spike <= resize(curr_time, DATA_BITWIDTH);
      else
        next_encoded_spike <= resize(-curr_time, DATA_BITWIDTH);
      end if;
		end if;	
	end process encoding_logic;
	-- =====================================================
  
  -- Concurrent output statements
	encoded_spike_o <= std_ulogic_vector(encoded_spike);
	encoded_spike_strb_o <= encoded_spike_strb;
  -- =====================================================
end architecture rtl;