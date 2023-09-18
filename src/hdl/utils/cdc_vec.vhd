library ieee;
use ieee.std_logic_1164.all;

library xpm;
use xpm.vcomponents.all;

entity cdc_vec is
  generic
  (
    W : positive 
  );
  port
  (
    arstn   : in  std_logic:='1';
    src_clk : in  std_logic;
    dst_clk : in  std_logic;
    i       : in  std_logic_vector(W-1 downto 0);
    o       : out std_logic_vector(W-1 downto 0)
  );
end cdc_vec;

architecture behavioral of cdc_vec is

  signal init_send    : std_logic;
  signal send_pending : std_logic;
  signal send_fsm     : std_logic;
  
  signal to_xpm       : std_logic_vector(W-1 downto 0);
  signal src_send     : std_logic;
  signal src_rcv      : std_logic;
  
  signal from_xpm     : std_logic_vector(W-1 downto 0);
  signal dst_req      : std_logic;
  
  signal fsm          : integer range 0 to 3;

  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of to_xpm   : signal is "NO";
  attribute SHREG_EXTRACT of from_xpm : signal is "NO";
  
begin

process(arstn, src_clk)
begin
if arstn = '0' then
  fsm <= 0;
  src_send <= '0';
elsif rising_edge(src_clk) then
  case fsm is
    when 0 =>
      to_xpm <= (others => '0');
      src_send <= '0';
      fsm <= 1;
    when 1 =>
      if src_rcv = '0' then
        src_send <= '1';
        fsm <= 2;
      end if;
    when 2 =>
      if src_rcv = '1' then
        src_send <= '0';
        fsm <= 3;
      end if;
    when 3 =>
      if to_xpm /= i then
        to_xpm <= i;
        fsm <= 1;
      end if;  
  end case;
end if;
end process;
  
xpm_inst: xpm_cdc_handshake
generic map(
  DEST_EXT_HSK   => 0,
  DEST_SYNC_FF   => 2,  
  SIM_ASSERT_CHK => 0,
  SRC_SYNC_FF    => 2,
  WIDTH          => W
)
port map(
  src_clk  => src_clk,
  src_in   => to_xpm,
  src_send => src_send,
  src_rcv  => src_rcv,
  dest_clk => dst_clk,
  dest_req => dst_req,
  dest_ack => '0',
  dest_out => from_xpm
);

process(dst_clk)
begin
if rising_edge(dst_clk) then
  if dst_req = '1' then
    o <= from_xpm;
  end if;
end if;
end process;
 
end behavioral;

