-- =====================================================
-- Author: Manuel Feindert
-- Last Modified: 10.08.2023
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.all;
use work.StandardDefinitions.all;
use work.RAMDefinitions.all;

entity ethernet_tx is
  generic(
    INTER_FRAME_GAP			    :	natural := 0;
    RAM_INITIALISE			    :	std_ulogic;
    N_PAYLOAD_BYTES			    :	natural
  );
  port(
    rst_i					          :	in std_ulogic;
    clk_i					          :	in std_ulogic;
    tx_clk_i				        :	in std_ulogic;

    tx_data_o				        :	out std_ulogic_vector(3 downto 0);
    tx_en_o					        :	out std_ulogic;
    tx_err_o				        :	out std_ulogic;
    tx_start_i				      :	in std_ulogic;
    tx_finished_o			      :	out std_ulogic;
    
    ram_can_write_o			    :	out std_ulogic;
    ram_a_overflow_strobe_o	:	out std_ulogic;
    ram_b_overflow_strobe_o	:	out std_ulogic;
    ram_a_data_ready_i		  :	in std_ulogic;
    ram_a_data_i			      :	in std_ulogic_vector(TX_RAM_DATA_BITWIDTH - 1 downto 0);
    ram_initialised_o		    :	out std_ulogic
  );
end entity ethernet_tx;


architecture rtl of ethernet_tx is

-- Constants
constant COUNTER_MAX		          :	natural := INTER_FRAME_GAP + 96;
constant COUNTER_BITWIDTH	        :	natural := natural(ceil(log2(real(COUNTER_MAX))));

-- Signals
signal counter				            :	unsigned(COUNTER_BITWIDTH - 1 downto 0);
signal next_counter			          :	unsigned(COUNTER_BITWIDTH - 1 downto 0);

signal a_addr_signal		          :	std_ulogic_vector(TX_RAM_ADDR_BITWIDTH - 1 downto 0);
signal b_addr_signal		          :	std_ulogic_vector(TX_RAM_ADDR_BITWIDTH - 1 downto 0);

signal ram_initialised_signal	    :	std_ulogic;
signal tx_data_strobe			        :	std_ulogic;
signal tx_payload				          :	std_ulogic_vector(7 downto 0);
signal tx_en_signal				        :	std_ulogic;
signal tx_finished_signal		      :	std_ulogic;
signal tx_finished_ipg_signal	    :	std_ulogic;
signal tx_start_signal			      :	std_ulogic;

signal ram_can_write_signal			  :	std_ulogic;
signal next_ram_can_write_signal	:	std_ulogic;

signal wait_inter_frame_gap_signal		  :	std_ulogic;
signal next_wait_inter_frame_gap_signal	:	std_ulogic;

signal want_to_start	    : std_ulogic;
signal next_want_to_start : std_ulogic;
	
begin

	reg_proc: process(rst_i, clk_i) is
	begin
		if rst_i = '1' then
			counter	<= (others => '0');
			ram_can_write_signal <= '0';
			wait_inter_frame_gap_signal <= '0';
			want_to_start <= '0';
		elsif rising_edge(clk_i) then
			if ram_initialised_signal = '1' then
				counter <= next_counter;
				ram_can_write_signal <= next_ram_can_write_signal;
				wait_inter_frame_gap_signal <= next_wait_inter_frame_gap_signal;
				want_to_start <= next_want_to_start;
			end if;
		end if;
	end process reg_proc;
	-- =====================================================
  
	-- ADDED --
	tx_start_signal <= tx_start_i;
	
	count_logic: process(counter, tx_finished_signal, wait_inter_frame_gap_signal) is
	begin
    -- default assignment
		next_counter <= counter;
		next_wait_inter_frame_gap_signal <= wait_inter_frame_gap_signal;
    tx_finished_ipg_signal <= '0';
    
		if tx_finished_signal = '1' and counter = 0 then
			next_wait_inter_frame_gap_signal <= '1';
		end if;
		
		if wait_inter_frame_gap_signal = '1' then
			next_counter <= counter + to_unsigned(1, next_counter'length);
		end if;

		if counter = COUNTER_MAX - 1 then
			tx_finished_ipg_signal <= '1';
			next_wait_inter_frame_gap_signal <= '0';
			next_counter <= (others => '0');
		end if;
	end process count_logic;
	-- =====================================================
  
	want_to_start_logic: process(tx_start_i, tx_en_signal, want_to_start) is
	begin
    -- default assignment
    next_want_to_start <= want_to_start;
    
    if tx_start_i = '1' then
      next_want_to_start <= '1';
    end if;
    
    if tx_en_signal = '1' then
      next_want_to_start <= '0';
		end if;
	end process want_to_start_logic;
	-- =====================================================
  
	can_write_logic: process(ram_can_write_signal, a_addr_signal, b_addr_signal, tx_en_signal, next_wait_inter_frame_gap_signal, next_want_to_start) is
	begin
		-- default assignment
		next_ram_can_write_signal <= ram_can_write_signal;

		if tx_en_signal = '0' and next_wait_inter_frame_gap_signal = '0' and next_want_to_start = '0' then
			next_ram_can_write_signal <= '1';
		else
			if unsigned(b_addr_signal) /= to_unsigned(0, b_addr_signal'length) and unsigned(a_addr_signal) < (unsigned(b_addr_signal) - 1) then
				next_ram_can_write_signal <= '1';
			else
				next_ram_can_write_signal <= '0';
			end if;
		end if;
	end process can_write_logic;
  -- =====================================================
  
	-- Embed Ethernet Transmit RAM Storage
	eth_ram_tx: entity ethernet_tx_storage(rtl)
	generic map(
		RAM_INITIALISE	    => RAM_INITIALISE				    -- Decide, wether the RAM gets pre-filled or not
	)
	port map(
		rst_i               => rst_i,
		clk_i               => clk_i,
		a_overflow_strobe_o	=> ram_a_overflow_strobe_o,	-- Every RAM address has been set
		b_overflow_strobe_o	=> ram_b_overflow_strobe_o,	-- Every RAM address has been read
		b_address_strobe_i	=> tx_data_strobe,			    -- The next RAM address gets read
		a_data_ready_i		  => ram_a_data_ready_i,		  -- The next RAM address gets set
		a_data_i			      => ram_a_data_i,			      -- RAM Data to be stored with the next a_data_ready_i
		b_data_o			      => tx_payload,				      -- RAM Data to be sent via Ethernet next
		a_addr_o			      => a_addr_signal,			      -- Current Address A of the RAM
		b_addr_o			      => b_addr_signal,			      -- Current Address B of the RAM
		ram_initialised_o	  => ram_initialised_signal	  -- Flag when the RAM has been initialized (1)
	);	
  -- =====================================================
  
	-- (1) ... Ethernet TX gets enabled when the RAM has been initialized
	-- (2) ... Marvel always stands for the Marvel 88e1111 IC which handles Ethernet
	-- Embed Ethernet Data Transmission
	eth_transmit_data: entity ethernet_tx_controller(rtl) 
	generic map (
		N_PAYLOAD_BYTES	 => N_PAYLOAD_BYTES				  -- Number of bytes to transmit with one frame
	)
	port map (
		rst_i				     => rst_i,
		clk_i				     => clk_i,
		tx_clk_i			   => tx_clk_i,				
		tx_eth_en_i			 => ram_initialised_signal,	-- Enables the Ethernet TX Entity (1)
		tx_data_o			   => tx_data_o,					    -- TX Data that gets sent to the Marvel (2)
		tx_finished_o		 => tx_finished_signal,			-- Strobe when the package has been successfully transmitted
		tx_en_o				   => tx_en_signal,				    -- TX Enable that enables the Marvel
		tx_err_o			   => tx_err_o,					      -- Not used
		tx_data_strobe_o => tx_data_strobe,				  -- Strobe that the Marvel requests the next data byte
		tx_start_i			 => tx_start_signal,				-- Strobe that starts the transmission of one data frame
		tx_payload_i		 => tx_payload					    -- Current payload byte for the Marvel
	);
  -- =====================================================
  
  -- Concurrent output statements
  tx_en_o <= tx_en_signal;
	tx_finished_o <= tx_finished_ipg_signal;
	ram_initialised_o <= ram_initialised_signal;
	ram_can_write_o <= ram_can_write_signal;
  -- =====================================================
end architecture rtl;