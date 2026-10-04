library ieee;
use IEEE.std_logic_1164.all;

entity checker is 

port
(
arr_1 : IN std_logic_vector(7 downto 0);
parity_type : IN std_logic;
output : OUT std_logic
);


-- parity type = 0 (EVEN)
-- parity type = 1 (ODD)

end checker;

architecture Dataflow of checker is 

signal arr_2 : std_logic_vector(8 downto 0);
signal res : std_logic_vector(7 downto 0);


begin


arr_2 <= arr_1 & parity_type;

res(0) <= arr_2(0) xor arr_2(1);
res(1) <= res(0) xor arr_2(2);
res(2) <= res(1) xor arr_2(3);
res(3) <= res(2) xor arr_2(4);
res(4) <= res(3) xor arr_2(5);
res(5) <= res(4) xor arr_2(6);
res(6) <= res(5) xor arr_2(7);
res(7) <= res(6) xor arr_2(8);

output <= res(7);

end Dataflow;
