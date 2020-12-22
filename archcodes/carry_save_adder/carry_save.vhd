----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2019 08:22:26 AM
-- Design Name: 
-- Module Name: carry_save - Behavioral
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
entity carry_save_adder is
Port ( X : in STD_LOGIC_VECTOR (7 downto 0);
        Y : in STD_LOGIC_VECTOR (7 downto 0);
        Z : in STD_LOGIC_VECTOR (7 downto 0);
        C_in:in STD_LOGIC;
        Sum : OUT STD_LOGIC_VECTOR (8 downto 0);
        Cout: OUT STD_LOGIC);
end carry_save_adder;
architecture Behavioral of carry_save_adder is
signal C_int,S_int: STD_LOGIC_VECTOR (8 downto 0);
signal C_2: STD_LOGIC_VECTOR (9 downto 0);
begin
    process(X,Y,Z,C_in,C_int,S_int,C_2) is
    Variable i: Integer;
    begin
        C_int(0)<=C_in;
        C_2(0)<='0';
        for i in 0 to 7 Loop
            S_int(i)<=X(i) xor Y(i) xor Z(i);
            C_int(i+1)<=(X(i) and Y(i)) or (Y(i) and Z(i)) or (Z(i) and X(i));
        End Loop;
        S_int(8)<='0';
        for i in 0 to 8 Loop
            Sum(i)<=S_int(i) xor C_int(i) xor C_2(i);
            C_2(i+1)<= (S_int(i) and C_int(i)) or (C_int(i) and C_2(i)) or(C_2(i) and S_int(i));
        End Loop;
        Cout<=S_int(8) xor C_int(8) xor C_2(8) ;
     end process;
end Behavioral;