library ieee;
use ieee.std_logic_1164.all;

entity dna_detector is

port ( button1 : in std_logic := '0';
       button2 : in std_logic := '0';
       button3 : in std_logic := '0';
       clk     : in std_logic;
       led1    : out std_logic;
       led2    : out std_logic);
       
end dna_detector;
       
architecture behavioral of dna_detector is

signal db1, db2, db3, db4, db5, db6, db7, db8, db9, op_button1, op_button2, op_button3: std_logic := '0';
signal input_array : std_logic_vector (0 to 9) := "0000000000";
signal b           : std_logic := '0';
signal n           : integer := 0;
signal r           : integer := 0;
signal read_array  : std_logic_vector (0 to 2) := "111";
signal led_1       : std_logic := '0';
signal led_2       : std_logic := '1'; 

begin
process(clk,op_button1, op_button2, op_button3)
begin

if rising_edge(clk) then

db1 <= button1;
db2 <= db1;
db3 <= db2;

db4 <= button2;
db5 <= db4;
db6 <= db5;

db7 <= button3;
db8 <= db7;
db9 <= db8;

op_button1 <= db1 and db2 and db3;
op_button2 <= db4 and db5 and db6;
op_button3 <= db7 and db8 and db9;

end if;

if rising_edge(op_button1) then
input_array(n) <= '1';
n <= n+1;

end if;

if rising_edge(op_button2) then
n <= n+1;

end if;

if rising_edge(op_button3) then
b <= '1';

end if;

if b = '1' then
if read_array /= "101" then
if r < 4 then

read_array <= input_array (r to r+2);
r <= r+1;

end if;

else

led_1 <= '1';
led2 <= '0';

end if;
end if;

end process;

led1 <= led_1;
led2 <= led_2;

end behavioral;


