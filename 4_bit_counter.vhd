library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity counter_four_bit is 

port
(
 load : IN std_logic;
 reset : IN std_logic;
 clk : IN std_logic;
 arr_in : IN std_logic_vector(3 downto 0);
 arr_out : OUT std_logic_vector(3 downto 0)
);
end counter_four_bit;

architecture behave of counter_four_bit is 

begin 
variable temp : std_logic_vector(3 downto 0);
process(reset,clk)
begin
if (reset = '1') then 
	temp := "0000";
elsif(Rising_Edge(clk)) then
     if(load = '1') then
	 temp := arr_in;
     else
	 temp := temp + 1; 
end if;
end if;
end process;
arr_out <= temp;
end behave;


