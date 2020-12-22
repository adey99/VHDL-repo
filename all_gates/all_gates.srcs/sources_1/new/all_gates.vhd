----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2019 12:05:35 PM
-- Design Name: 
-- Module Name: all_gates - Behavioral
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

entity all_gates is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC;
           d : out STD_LOGIC;
           f : out STD_LOGIC;
           g : out STD_LOGIC;
           h : out STD_LOGIC;
           k : out STD_LOGIC);
end all_gates;

architecture Behavioral of all_gates is

begin
c<=a or b;
d<=a and b;
f<= not a;
g<=a xor b;
h<=a nand b;
k<= a nor b;
end Behavioral;
