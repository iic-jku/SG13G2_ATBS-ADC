-- =====================================================
-- Author: Manuel Feindert
-- Last Modified: 10.08.2023
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity sr_ff is
  port(
    S_i		:	in std_ulogic;
    R_i		:	in std_ulogic;
    clk_i :	in std_ulogic;
    rst_i	:	in std_ulogic;
    Q_o		:	out std_ulogic
  );
end entity sr_ff;
 
architecture rtl of sr_ff is

signal q_signal			 : std_ulogic;
signal next_q_signal : std_ulogic;

begin
  
	reg_proc: process(rst_i, clk_i) is
	begin
		if rst_i = '1' then
			q_signal <= '0';
		elsif rising_edge(clk_i) then
			q_signal <=	next_q_signal;
		end if;
	end process reg_proc;
  -- =====================================================
  
	ff_logic: process(S_i, R_i, q_signal) is
	begin
		next_q_signal <= q_signal;
		if R_i = '1' or S_i = '1' then
			next_q_signal <= S_i and not R_i;
		end if;
	end process ff_logic;
  -- =====================================================
  
  -- Concurrent output statements
	Q_o <= q_signal;
  -- =====================================================
end rtl;
