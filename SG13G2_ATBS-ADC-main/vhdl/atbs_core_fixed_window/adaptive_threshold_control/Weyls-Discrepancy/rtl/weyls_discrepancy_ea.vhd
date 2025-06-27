-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 02.10.2022
-- Description: calculation of weyls discrepancy

-- Generic:
-- D_MAX          ... maximum of discrepancy
-- N_SPIKES       ... spikes in window
-- WEYLSD_BITS    ... bits for discrepancy value based on D_MAX
-- LEVEL_OF_REG   ... buffer register after every nth spike evaluation level

-- In-/Outputs:
-- spikes_i       ... array of windowed spikes
-- spikes_strb_i  ... valid strobe for input spikes
-- weylsd_o       ... evaluated discrepancy over window
-- weylsd_strb_o  ... valid strobe for discrepancy
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.adaptive_std.all;
use work.all;

entity weyls_discrepancy is
  generic(
    LEVEL_OF_REG  : natural;
    WEYLSD_BITS   : natural;
    THERMO_BITS   : natural
  );
  port (
    clock_i 	    : in std_ulogic;
    reset_i       : in std_ulogic;
    spikes_i      : in T_SPIKES;
    spikes_strb_i : in std_ulogic;
    
    weylsd_o      : out unsigned(WEYLSD_BITS-1 downto 0);
    weylsd_strb_o : out std_ulogic
  );
end entity weyls_discrepancy;
 
architecture rtl of weyls_discrepancy is
  
-- Constants and Type definitions
constant N_THERMOCODES  : natural := N_SPIKES + 1;
constant N_BUF_REG      : natural := natural(floor(real(N_SPIKES) / real(LEVEL_OF_REG)));
constant N_DELAY        : natural := N_BUF_REG + 1; -- + 1 only for output register --> The calculation is done in only one clock cycle.
constant THERMO_INIT    : std_ulogic_vector(THERMO_BITS - 1 downto 0) := (THERMO_BITS - 1 downto THERMO_BITS / 2 => '0') & (THERMO_BITS / 2 - 1 downto 0 => '1');
constant IN_BITS_ENC    : natural := THERMO_BITS / 2;

type T_BUF_REG is array (N_BUF_REG - 1 downto 0) of std_ulogic_vector(THERMO_BITS - 1 downto 0);
type T_BUF_STRB is array (N_DELAY - 1 downto 0) of std_ulogic; -- n_buf_reg + 1 (priority_encoder)
type T_THERMO is array (N_THERMOCODES - 1 downto 0) of std_ulogic_vector(THERMO_BITS - 1 downto 0);

-- Internal signals
signal buf_reg          : T_BUF_REG;
signal next_buf_reg     : T_BUF_REG;

signal sync_weylsd_strb : T_BUF_STRB;
signal next_weylsd_strb : std_ulogic;

signal thermocodes      : T_THERMO;
signal buf_thermocodes  : T_THERMO;

signal orresult         : std_ulogic_vector(THERMO_BITS-1 downto 0);
signal neg_orresult     : std_ulogic_vector(THERMO_BITS/2-1 downto 0);
signal temp_orresult    : T_THERMO;

signal weylsd           : unsigned(WEYLSD_BITS-1 downto 0);
signal next_weylsd      : unsigned(WEYLSD_BITS-1 downto 0);
signal weylsd_neg       : unsigned(WEYLSD_BITS-1 downto 0);
signal weylsd_pos       : unsigned(WEYLSD_BITS-1 downto 0);

signal valid_pos        : std_ulogic;
signal valid_neg        : std_ulogic;
 
begin
  
  next_weylsd_strb <= spikes_strb_i;
  
  reg_proc: process(clock_i, reset_i) is
  begin
    if reset_i = '1' then
      buf_reg <= (others => (others => '0'));
      sync_weylsd_strb <= (others => '0');
      weylsd <= (others => '0');
    elsif rising_edge(clock_i) then
      buf_reg <= next_buf_reg;
      weylsd <= next_weylsd;
      -- valid strobe of discrepancy is delayed depending on pipeline register
      sync_weylsd_strb(0) <= next_weylsd_strb;
      for i in N_DELAY - 1 downto 1 loop
        sync_weylsd_strb(i) <= sync_weylsd_strb(i - 1);
      end loop;
    end if;
  end process reg_proc;
  -- =====================================================

  -- UPDATE THERMOCODES ON SPIKE
  buf_thermocodes(0) <= THERMO_INIT;
  
  gen_spike_2_tc: for i in 0 to N_SPIKES-1 generate 
    spike_2_tc: entity spike_2_thermocode(rtl)
    generic map(
      THERMO_BITS => THERMO_BITS
    )
    port map(
      spike_i     => spikes_i(N_SPIKES - 1 - i),  -- oldest spike @ N_SPIKES - 1, newest spike @ 0
      thermo_i    => thermocodes(i),
      thermo_o    => buf_thermocodes(i + 1) 
    );
  end generate;
  -- =====================================================
  
  -- Generic pipeline register
  insert_buf_reg: process(buf_reg, buf_thermocodes) is
  begin
    thermocodes <= buf_thermocodes;
    next_buf_reg <= buf_reg;
    
    for i in 0 to N_BUF_REG - 1 loop
      next_buf_reg(i) <= buf_thermocodes(LEVEL_OF_REG*(i + 1));
      thermocodes(LEVEL_OF_REG*(i + 1)) <= buf_reg(i);
    end loop;
  end process;
  -- =====================================================
  
  -- DISJUNCTION OF THERMOCODES TO GET CHANGED BITS COMPARED TO THE INIT STATE
  -- orresult is e.g. 011|100 and shows all bits changed compared to the init state
  -- the sum of those bits gives the discrepancy
  eval_orresult: process(thermocodes, temp_orresult) is
  variable offset_comp : T_THERMO;
  begin
    offset_comp(0)(THERMO_BITS / 2 - 1 downto 0) := not thermocodes(0)(THERMO_BITS / 2 - 1 downto 0);
    offset_comp(0)(THERMO_BITS - 1 downto THERMO_BITS / 2) := thermocodes(0)(THERMO_BITS-1 downto THERMO_BITS / 2);
    temp_orresult(0) <= offset_comp(0);
    
    for i in 1 to N_THERMOCODES - 1 loop 
      -- negative part has to be inverted to compensate offset
      -- offset_comp shows bits changed compared to the init state
      -- INIT: 000|111 --> -1: 000|011 --> offset_comp: 000|100
      offset_comp(i)(THERMO_BITS / 2 - 1 downto 0) := not thermocodes(i)(THERMO_BITS / 2 - 1 downto 0);
      offset_comp(i)(THERMO_BITS - 1 downto THERMO_BITS / 2) := thermocodes(i)(THERMO_BITS-1 downto THERMO_BITS / 2);
      temp_orresult(i) <= temp_orresult(i-1) or offset_comp(i);
    end loop;
    
    orresult <= temp_orresult(N_THERMOCODES-1);
  end process;
  -- =====================================================

  -- ENCODING OF THERMOCODES WITH PRIORITY ENCODER
  -- Priority encoder for negative part in inverted order (e.g. 100 as 001 to 1)
  reverse_bits: process(orresult) is
  begin
    for i in 0 to THERMO_BITS / 2 - 1 loop
      neg_orresult(neg_orresult'left - i) <= orresult(i);
    end loop;
  end process;

  priority_encoder_0: entity priority_encoder(rtl)
  generic map(
    IN_BITS   => IN_BITS_ENC,
    OUT_BITS  => WEYLSD_BITS
  )
  port map(
    clock_i   => clock_i,
    reset_i   => reset_i,
    code_i    => neg_orresult,
    
    bin_o     => weylsd_neg
  );
  -- =====================================================
  
  -- Priority encoder for positive part (e.g. 011 to 2)
  priority_encoder_1: entity priority_encoder(rtl)
  generic map(
    IN_BITS => IN_BITS_ENC,
    OUT_BITS => WEYLSD_BITS
  )
  port map(
    clock_i => clock_i,
    reset_i => reset_i,
    code_i  => orresult(THERMO_BITS - 1 downto THERMO_BITS / 2),
    
    bin_o   => weylsd_pos
  );
  -- =====================================================
  
  -- EVALUATE DISCREPANCY
  next_weylsd <= resize(weylsd_neg + weylsd_pos, WEYLSD_BITS);
  -- =====================================================
  
  -- Concurrent output statements
  weylsd_o <= weylsd;
  weylsd_strb_o <= sync_weylsd_strb(N_DELAY - 1);
  -- =====================================================
end architecture; 