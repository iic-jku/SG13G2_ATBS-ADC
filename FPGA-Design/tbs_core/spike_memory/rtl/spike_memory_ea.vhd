-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 09.03.2025
-- Description: This .vhd file implements a FIFO with a shift-register (SRG) or dual RAM IP writing / reading incoming encoded spikes into / out of it.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.all;

entity spike_memory is
	generic(
		DATA_BITWIDTH  : natural;	-- RAM_WIDTH
		ADDR_BITWIDTH  : natural	-- RAM_DEPTH = 2**ADDR_BITWIDTH
	);
	port(
		clock_i				 : in std_ulogic;
		reset_i				 : in std_ulogic;
		-- Write Port
		enable_write_i : in std_ulogic;
		a_data_i   		 : in std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
		-- Read Port
		enable_read_i	 : in std_ulogic;
    tx_strb_i      : in std_ulogic;
    
		read_strb_o    : out std_ulogic;
		b_data_o  		 : out std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
		-- Flags
		fifo_full_o		 : out std_ulogic;
		fifo_empty_o	 : out std_ulogic
	);
end spike_memory;
 
architecture rtl of spike_memory is

-- Constants
constant RAM_DEPTH	    : natural := 2**ADDR_BITWIDTH;
constant N_TX           : natural := natural(ceil(real(DATA_BITWIDTH) / 8.0)); -- 8 bit packages per b_data
constant READ_DELAY     : natural := natural(ceil(real(DATA_BITWIDTH) / 8.0)) + 1; -- clocks from read enabling to valid data at output port 
constant MEMORY_SELECT  : natural := 1; -- 0... Shift Register, 1... dual RAM IP
constant MEMORY_RESET   : natural := 1; -- 0... Asynchronous Reset, 1... Synchronous Reset (only with dual RAM IP)

-- Types
type T_SRG is array(RAM_DEPTH - 1 downto 0) of std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
type T_SYNC_READ is array(READ_DELAY - 1 downto 0) of std_ulogic; -- delay register for read_strb
type T_TX is array(N_TX - 1 downto 0) of std_ulogic;

-- Shift Register
signal srg      : T_SRG;
signal next_srg : T_SRG;

-- Head pointer signals
signal head      		        : unsigned(ADDR_BITWIDTH - 1 downto 0);
signal next_head		        : unsigned(ADDR_BITWIDTH - 1 downto 0);

-- Tail pointer signals
signal tail      		        : unsigned(ADDR_BITWIDTH - 1 downto 0);
signal next_tail 		        : unsigned(ADDR_BITWIDTH - 1 downto 0);
  
-- FIFO data counter signals
signal fifo_fill_count 	    : unsigned(ADDR_BITWIDTH - 1 downto 0);

signal write_strb 	        : std_ulogic;
signal write_delayed_strb   : std_ulogic;

signal read_strb 	          : std_ulogic;

-- Data
signal a_data               : std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
signal next_a_data          : std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);

signal b_data               : std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
signal next_b_data          : std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);

-- Flags
signal fifo_empty 		      : std_ulogic;	-- '1'... empty
signal fifo_full 		        : std_ulogic;	-- '1'... full

signal sync_read_strb       : T_SYNC_READ;
signal next_sync_read_strb  : T_SYNC_READ;

signal tx_active            : T_TX;
signal next_tx_active       : T_TX;

begin

	-- Embed Ring Buffer (FIFO)
  -- Register with Asynchronous Reset
  async_reg: if (MEMORY_RESET = 0) generate
    reg_proc: process(clock_i, reset_i)
    begin
      if reset_i = '1' then
        head <= (others => '0');
        tail <= (others => '0');
        write_delayed_strb <= '0';
        a_data <= (others => '0');
        b_data <= (others => '0');
        sync_read_strb <= (others => '0');
        tx_active <= (others => '0');
      elsif rising_edge(clock_i) then
        head <= next_head;
        tail <= next_tail;
        write_delayed_strb <= write_strb;
        a_data <= next_a_data;
        b_data <= next_b_data;
        sync_read_strb <= next_sync_read_strb;
        tx_active <= next_tx_active;
      end if;
    end process reg_proc;
  end generate async_reg;
  
  -- Register with Synchronous Reset (better for s7-Mini FPGA)
  sync_reg: if (MEMORY_RESET = 1) generate
    reg_proc: process(clock_i)
    begin
      if rising_edge(clock_i) then
        if reset_i = '1' then
          head <= (others => '0');
          tail <= (others => '0');
          write_delayed_strb <= '0';
          a_data <= (others => '0');
          b_data <= (others => '0');
          sync_read_strb <= (others => '0');
          tx_active <= (others => '0');
        else
          head <= next_head;
          tail <= next_tail;
          write_delayed_strb <= write_strb;
          a_data <= next_a_data;
          b_data <= next_b_data;
          sync_read_strb <= next_sync_read_strb;
          tx_active <= next_tx_active;
        end if;
      end if;
    end process reg_proc;
  end generate sync_reg;
	-- ============================================
  
	-- Increment pointer and head counter
	-- Head Counter Logic
	-- Head is incremented after a write and when the fifo is not full!
	cnt_head_logic: process(head, enable_write_i, fifo_full, a_data, a_data_i)
	begin
		-- default assignment
		next_head <= head;
    write_strb <= '0';
    next_a_data <= a_data;
    
		if enable_write_i = '1' and fifo_full = '0' then 
			next_head <= head + 1;
      write_strb <= '1';
      next_a_data <= a_data_i;
		end if;
	end process cnt_head_logic;
	-- ============================================
	
	-- Tail Counter Logic
	-- Tail is incremented after a read and when the fifo is not empty!
	cnt_tail_logic: process(tail, enable_read_i, fifo_empty, tx_active, tx_strb_i)
	begin
		-- default assignment
		next_tail <= tail;
    next_tx_active <= tx_active;
		read_strb <= '0';

		if enable_read_i = '1' and fifo_empty = '0' and tx_active(N_TX - 1) = '0' then 
			next_tail <= tail + 1;
			read_strb <= '1';
      next_tx_active <= (others => '1');
		end if;
    
    -- no reading until read data was succesfully transmitted
    if tx_strb_i = '1' then
      next_tx_active(0) <= '0';
      for i in N_TX - 1 downto 1 loop
        next_tx_active(i) <= tx_active(i-1);
      end loop;
    end if;
	end process cnt_tail_logic;
	-- ============================================
  
  -- FIFO Concurrent Statements
	-- Set fifo_fill_count in concurrent statement
	fifo_fill_count <= head - tail + RAM_DEPTH when head < tail else head - tail;
	-- Set the flags in concurrent statement
	fifo_empty <= '1' when fifo_fill_count = 0 else '0';
	fifo_full <= '1' when fifo_fill_count >= RAM_DEPTH - 1 else '0';
	-- ============================================
	
  -- MEMORY
  -- Either use Shift Register or dual RAM IP
  
  -- Embed Shift Register (Asynchronous Reset)
  gen_shift_reg: if (MEMORY_SELECT = 0) generate
    shift_reg_proc: process(clock_i, reset_i)
    begin
      if reset_i = '1' then
        srg <= (others => (others => '0'));
      elsif rising_edge(clock_i) then
        srg <= next_srg;
      end if;
    end process shift_reg_proc;
    
    shift_logic: process(write_delayed_strb, a_data, srg)
    begin
      -- default assignment (hold values)
      next_srg <= srg;

      if write_delayed_strb = '1' then
        -- Shift data further
        for i in 1 to RAM_DEPTH - 1 loop
          next_srg(i) <= srg(i-1);
        end loop;

        -- Insert new data at head
        next_srg(0) <= a_data;
      end if;
    end process shift_logic;
    
    next_b_data <= srg(to_integer(fifo_fill_count));
  end generate gen_shift_reg;
  -- ============================================
  
  -- Embed dual RAM IP
  gen_dual_ram: if (MEMORY_SELECT = 1) generate
    dual_ram_0: entity dual_ram(rtl)
    generic map(
      DATA_BITWIDTH => DATA_BITWIDTH,
      ADDR_BITWIDTH => ADDR_BITWIDTH	
    )
    port map(
      -- Port A
      a_clock_i  => clock_i,
      a_write_i  => write_delayed_strb, -- '1',
      a_addr_i   => std_ulogic_vector(head),
      a_data_i   => a_data,
      a_data_o   => open,
       
      -- Port B
      b_clock_i  => clock_i,
      b_write_i  => '0',
      b_addr_i   => std_ulogic_vector(tail),
      b_data_i   => (others => '0'),	-- not used, because b_write_i '0' --> delete during synthesis
      b_data_o   => next_b_data
    );
  end generate gen_dual_ram;
  -- ============================================
  
	-- Delay read strobe until b_data is valid
  sync_read_strb_logic: process(sync_read_strb, read_strb) is
  begin
    -- default assignment
    next_sync_read_strb <= sync_read_strb;
    
    next_sync_read_strb(0) <= read_strb;
    
    for i in READ_DELAY - 1 downto 1 loop
        next_sync_read_strb(i) <= sync_read_strb(i-1);
    end loop;
  end process sync_read_strb_logic;
  -- ============================================
  
  -- Output concurrent Statements
	read_strb_o <= sync_read_strb(READ_DELAY-1);
  b_data_o <= b_data;
	fifo_full_o <= fifo_full;
	fifo_empty_o <= fifo_empty;
	-- ============================================
end architecture rtl;