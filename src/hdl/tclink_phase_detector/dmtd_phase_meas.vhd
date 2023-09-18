-------------------------------------------------------------------------------
-- Title      : Digital DMTD Phase Measurement Unit
-- Project    : White Rabbit
-------------------------------------------------------------------------------
-- File       : dmtd_phase_meas.vhd
-- Author     : Tomasz Wlostowski
-- Company    : CERN BE-Co-HT
-- Created    : 2010-02-25
-- Last update: 2022-09-01
-- Platform   : FPGA-generic
-- Standard   : VHDL '93
-------------------------------------------------------------------------------
-- Description: Module measures phase shift between the two input clocks
-- using a DDMTD phase detector. The raw measurement can be further averaged to
-- increase the accuracy.
-------------------------------------------------------------------------------
--
-- Copyright CERN 2020.
-- This source describes Open Hardware and is licensed under the CERN-OHLW v2
-- You may redistribute and modify this documentation and make products
-- using it under the terms of the CERN-OHL-W v2 (https:/cern.ch/cern-ohl).
-- This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED
-- WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY
-- AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN-OHL-W v2
-- for applicable conditions.
-- Source location: https://gitlab.cern.ch/HPTD/tclink
-- As per CERN-OHL-W v2 section 4.1, should You produce hardware based on
-- these sources, You must maintain the Source Location visible on the
-- external case of the TCLink or other product you make using
-- this documentation.
--
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author          Description
-- 2010-02-25  1.0      twlostow        Created
-- 2011-04-18  1.1      twlostow        Added comments and header
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;


entity dmtd_phase_meas is
  generic (
-- Phase tag counter size (see dmtd_with_deglitcher.vhd for explanation)
    g_counter_bits        : integer := 20); 
  port (
-- resets
    rst_sys_n_i  : in std_logic;
    rst_dmtd_n_i : in std_logic;

-- system clock 
    clk_sys_i  : in std_logic;
-- Input clocks
    clk_a_i    : in std_logic;
    clk_b_i    : in std_logic;
    clk_dmtd_i : in std_logic;


    deglitch_threshold_i : in  std_logic_vector(15 downto 0);
    en_i : in std_logic;

    navg_i         : in  std_logic_vector(11 downto 0);
    phase_meas_o   : out std_logic_vector(31 downto 0);
    phase_meas_p_o : out std_logic
    );

end dmtd_phase_meas;

architecture syn of dmtd_phase_meas is

  component dmtd_with_deglitcher
    generic (
      g_counter_bits : natural);
    port (
      rst_n_dmtdclk_i      : in  std_logic;
      rst_n_sysclk_i       : in  std_logic;
      clk_in_i             : in  std_logic;
      clk_dmtd_i           : in  std_logic;
      clk_sys_i            : in  std_logic;
      resync_p_a_i         : in  std_logic := '0';
      resync_p_o           : out std_logic;
      resync_start_p_i     : in  std_logic := '0';
      resync_done_o        : out std_logic;
      shift_en_i           : in  std_logic;
      shift_dir_i          : in  std_logic;
      clk_dmtd_en_i        : in  std_logic := '1';
      deglitch_threshold_i : in  std_logic_vector(15 downto 0);
      dbg_dmtdout_o        : out std_logic;
      tag_o                : out std_logic_vector(g_counter_bits-1 downto 0);
      tag_stb_p1_o         : out std_logic;
      dbg_clk_d3_o         : out std_logic);
  end component;

  type t_pd_state is (PD_WAIT_TAG, PD_WAIT_A, PD_WAIT_B);

  signal tag_a : std_logic_vector(g_counter_bits-1 downto 0);
  signal tag_b : std_logic_vector(g_counter_bits-1 downto 0);

  signal tag_a_p : std_logic;
  signal tag_b_p : std_logic;

  signal acc     : unsigned(31 downto 0);
  signal avg_cnt : unsigned(11 downto 0);

  signal phase_raw_p : std_logic;
  signal phase_raw   : unsigned(g_counter_bits-1 downto 0);
  signal pd_state    : t_pd_state;

  signal phase_hi, phase_lo : std_logic;
  signal ph_acq_valid       : std_logic;


  signal stored_sign   : std_logic;
  signal preserve_sign : std_logic;
  
begin  -- syn

  DMTD_A : dmtd_with_deglitcher
    generic map (
      g_counter_bits => g_counter_bits)
    port map (
      rst_n_dmtdclk_i       => rst_dmtd_n_i,
      rst_n_sysclk_i        => rst_sys_n_i,
      clk_dmtd_i            => clk_dmtd_i,
      clk_sys_i             => clk_sys_i,
      clk_in_i              => clk_a_i,
      tag_o                 => tag_a,
      tag_stb_p1_o          => tag_a_p,
      shift_en_i            => '0',
      shift_dir_i           => '0',
      deglitch_threshold_i  => deglitch_threshold_i,
      dbg_dmtdout_o         => open);

  DMTD_B : dmtd_with_deglitcher
    generic map (
      g_counter_bits => g_counter_bits)
    port map (
      rst_n_dmtdclk_i       => rst_dmtd_n_i,
      rst_n_sysclk_i        => rst_sys_n_i,
      clk_dmtd_i            => clk_dmtd_i,
      clk_sys_i             => clk_sys_i,
      clk_in_i              => clk_b_i,
      tag_o                 => tag_b,
      tag_stb_p1_o          => tag_b_p,
      shift_en_i            => '0',
      shift_dir_i           => '0',
      deglitch_threshold_i  => deglitch_threshold_i,
      dbg_dmtdout_o         => open);


  collect_tags : process (clk_sys_i)
  begin  -- process   
    if rising_edge(clk_sys_i) then
      if(rst_sys_n_i = '0' or en_i = '0') then
        phase_raw    <= (others => '0');
        phase_raw_p  <= '0';
        ph_acq_valid <= '0';
        pd_state     <= PD_WAIT_TAG;

      else

        case pd_state is
          when PD_WAIT_TAG =>

            if(tag_a_p = '1' and tag_b_p = '1') then
              phase_raw   <= unsigned(tag_b) - unsigned(tag_a);
              phase_raw_p <= '1';
            elsif(tag_a_p = '1') then
              phase_raw   <= unsigned(tag_a);
              phase_raw_p <= '0';
              pd_state    <= PD_WAIT_B;
            elsif (tag_b_p = '1') then
              phase_raw   <= (not unsigned(tag_b)) + 1;
              phase_raw_p <= '0';
              pd_state    <= PD_WAIT_A;
            else
              phase_raw_p <= '0';
            end if;
            
          when PD_WAIT_A =>
            if(tag_a_p = '1') then
              phase_raw   <= phase_raw + unsigned(tag_a);
              phase_raw_p <= '1';
              pd_state    <= PD_WAIT_TAG;
            end if;

          when PD_WAIT_B =>
            if(tag_b_p = '1') then
              phase_raw   <= phase_raw - unsigned(tag_b);
              phase_raw_p <= '1';
              pd_state    <= PD_WAIT_TAG;
            end if;

            
          when others => null;
        end case;

--        if(tag_a_p = '1' and tag_b_p = '1') then
--          phase_raw <= unsigned(tag_b) - unsigned(tag_a);
--          phase_raw_p <= '1';
--          ph_acq_valid <= '0';
--        elsif(tag_a_p = '1' and tag_b_p = '0' and ph_acq_valid  ='1') then
--          phase_raw   <= phase_raw - unsigned(tag_a); 
--          phase_raw_p <= '1';
--          ph_acq_valid <= '0';
--        elsif(tag_a_p = '0' and tag_b_p = '1') then
--          phase_raw_p <= '0';
--          phase_raw <= unsigned(tag_b);
--          ph_acq_valid <= '1';
--        else
--          phase_raw_p <= '0';
--        end if;


      end if;
    end if;
  end process;


  phase_hi <= '1' when phase_raw(phase_raw'high downto phase_raw'high-1) = "11" else '0';
  phase_lo <= '1' when phase_raw(phase_raw'high downto phase_raw'high-1) = "00" else '0';


  calc_error : process (clk_sys_i)
  begin  -- process calc_error
    if rising_edge(clk_sys_i) then
      if(rst_sys_n_i = '0' or en_i = '0') then
        acc            <= (others => '0');
        avg_cnt        <= (others => '0');
        phase_meas_p_o <= '0';
        phase_meas_o   <= (others => '0');
        stored_sign    <= '0';
      else
        

        if(phase_raw_p = '1') then
          if(avg_cnt = to_unsigned(0, avg_cnt'length)) then
            acc <= resize(phase_raw, acc'length);

            if(phase_lo = '1') then
              preserve_sign <= '1';
              stored_sign   <= '0';
            elsif(phase_hi = '1') then
              preserve_sign <= '1';
              stored_sign   <= '1';
            else
              preserve_sign <= '0';
            end if;

            avg_cnt        <= avg_cnt + 1;
            phase_meas_p_o <= '0';
          elsif (avg_cnt = unsigned(navg_i)) then
            avg_cnt        <= (others => '0');
            phase_meas_o   <= std_logic_vector(acc);
            phase_meas_p_o <= '1';
          else
            avg_cnt        <= avg_cnt + 1;
            phase_meas_p_o <= '0';



            if(preserve_sign = '1') then
              if(phase_lo = '1' and stored_sign = '1') then
                --       report "preserve_sign1";
                acc <= acc + resize(phase_raw, acc'length) + to_unsigned(2**g_counter_bits, acc'length);
              elsif (phase_hi = '1' and stored_sign = '0') then

                --report "preserve_sign0";
                acc <= acc + resize(phase_raw, acc'length) - to_unsigned(2**g_counter_bits, acc'length);
              else
                acc <= acc + resize(phase_raw, acc'length);
              end if;
            else
              acc <= acc + resize(phase_raw, acc'length);
            end if;
          end if;
        else
          phase_meas_p_o <= '0';
        end if;
      end if;
    end if;
  end process calc_error;


end syn;

