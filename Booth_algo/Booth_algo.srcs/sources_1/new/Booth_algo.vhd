----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2019 11:07:30 AM
-- Design Name: 
-- Module Name: Booth_algo - Behavioral
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

entity Booth_algo is
    Port ( mpcd : in STD_LOGIC_VECTOR (7 downto 0);
           mplr : in STD_LOGIC_VECTOR (7 downto 0);
           result : out STD_LOGIC_VECTOR (15 downto 0));
end Booth_algo;
architecture Behavioral of Booth_algo is
begin
    process(mpcd,mplr) is
    variable nbr,br:STD_LOGIC_VECTOR (7 downto 0);
    variable acqr: STD_LOGIC_VECTOR (15 downto 0);
    variable qn1: STD_LOGIC;
    variable i:integer;
    begin
        acqr(15 downto 8):=(others=>'0');
        acqr(7 downto 0):=mpcd;
        br:=mplr;
        nbr:=(not mplr)+'1';
        qn1:='0';
        for i in 7 downto 0 loop
            if(acqr(0)='0' and qn1='1') then
                acqr(15 downto 8):=acqr(15 downto 8)+br;   
            elsif(acqr(0)='1' and qn1='0') then
                acqr(15 downto 8):=acqr(15 downto 8)+nbr;
            end if;
            qn1:=acqr(0);
            acqr(14 downto 0):=acqr(15 downto 1);
        end loop;
        result<=acqr;
    end process;
end Behavioral;
