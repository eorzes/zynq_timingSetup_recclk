library ieee;
use ieee.std_logic_1164.all;

entity multibyte_enc8b10b is
  generic(
    NBR: integer:= 4
  );
  port(
    clk_i        : in  std_logic;
    rundp_i      : in  std_logic;
    ctrl_i       : in  std_logic_vector(   NBR-1 downto 0);
    data_i       : in  std_logic_vector( 8*NBR-1 downto 0);
    rundp_o      : out std_logic;
    data_o       : out std_logic_vector(10*NBR-1 downto 0);
    bypass_en_i  : in  std_logic:='0';
    bypass_data_i  : in std_logic_vector(10*NBR-1 downto 0):=(others => '0')
  ); 
end multibyte_enc8b10b;

architecture rtl of multibyte_enc8b10b is

  signal rundp_to_enc   : std_logic_vector(0 to NBR);
  signal rundp_from_enc : std_logic_vector(0 to NBR-1);
  signal data           : std_logic_vector(10*NBR-1 downto 0);
  signal data_to_enc    : std_logic_vector(9*NBR-1 downto 0);
  attribute dont_touch  : boolean;
  attribute dont_touch of rundp_to_enc  : signal is true;
  attribute dont_touch of rundp_from_enc : signal is true;
  signal bypass_en      : std_logic;
   
begin
  
  rundp_to_enc(0) <= rundp_i;
  data_to_enc_g: for i in 0 to NBR-1 generate
    data_to_enc(9*(i+1)-1 downto 9*i) <= ctrl_i(i) & data_i(8*(i+1)-1 downto 8*i);
  end generate;
        
  g: for i in 0 to NBR-1 generate
    attribute keep_hierarchy : string;
    attribute keep_hierarchy of enc_inst : label is "yes";
  begin
    enc_inst: entity work.encode
      port map(
        dispin  => rundp_to_enc(i),
        datain  => data_to_enc(9*(i+1)-1 downto 9*i),
        dispout => rundp_from_enc(i),
        dataout => data(10*(i+1)-1 downto 10*i)
      );

    rundp_to_enc(i+1) <= rundp_from_enc(i);
                 
  end generate; 
  
  p_sel: process(clk_i)
    begin
      if rising_edge(clk_i) then
        rundp_o <= rundp_to_enc(NBR);      
        if bypass_en ='0' then
          data_o  <= data;
        else
          data_o <= bypass_data_i;
        end if;    
      end if;
    end process;

  p_switch : process(clk_i) -- it ensures that the switching takes place always at a specific moment 
    begin
      if rising_edge(clk_i) then
        if ctrl_i = "0001" then
          bypass_en <= bypass_en_i;
        end if;
      end if;
    end process; 

end rtl;

