----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2019 10:08:28 AM
-- Design Name: 
-- Module Name: non_restoring_division - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity non_restoring_division is
    Port ( dvdd : in STD_LOGIC_VECTOR (7 downto 0);
           dvsr : in STD_LOGIC_VECTOR (7 downto 0);
           quotient : out STD_LOGIC_VECTOR (7 downto 0);
           remainder: out STD_LOGIC_VECTOR(7 downto 0));
end non_restoring_division;
architecture Behavioral of non_restoring_division is
begin
    process(dvdd,dvsr) is
    variable nbr,br:STD_LOGIC_VECTOR (7 downto 0);
    variable acqr: STD_LOGIC_VECTOR (15 downto 0);
    variable i:integer;
    begin
        acqr(15 downto 8):=(others=>'0');
        acqr(7 downto 0):=dvdd;
        br:=dvsr;
        nbr:=(not dvsr)+'1';
        for i in 7 downto 0 loop
            acqr(15 downto 1):=acqr(14 downto 0);
            if(acqr(15)='0') then
                acqr(15 downto 8):=acqr(15 downto 8)+nbr;
            else
                acqr(15 downto 8):=acqr(15 downto 8)+br;
            end if;
            if(acqr(15)='0') then
                acqr(0):='1';
            else
                acqr(0):='0';
            end if;
        end loop;
        if(acqr(15)='1') then
            acqr(15 downto 8):=acqr(15 downto 8)+br;
        end if;
        quotient<=acqr(7 downto 0);
        remainder<=acqr(15 downto 8);
    end process;
end Behavioral;
