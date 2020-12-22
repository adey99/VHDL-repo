----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/16/2019 07:19:43 PM
-- Design Name: 
-- Module Name: ripple_carry - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ripple_carry is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           Sum : out STD_LOGIC_VECTOR (7 downto 0);
           mode : in STD_LOGIC;
           cout : out STD_LOGIC);
end ripple_carry;

architecture Behavioral of ripple_carry is
signal C: STD_LOGIC_VECTOR(8 downto 0);
begin
    process(a,b,mode,C) is
    Variable i:Integer;
    begin
        C(0)<=mode;
        for i in 0 to 7 Loop
            Sum(i)<=a(i) xor(b(i) xor mode) xor C(i);
            C(i+1)<=(a(i) and (b(i) xor mode)) or ((b(i) xor mode) and C(i)) or (a(i) and C(i));
         end Loop;
         cout<=C(8);
    end process; 

end Behavioral;
