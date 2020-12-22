----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2019 08:38:07 AM
-- Design Name: 
-- Module Name: register_alu - Behavioral
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
library ieee;
use ieee.std_logic_1164.all;

entity register_alu is
port(
    CLK       :in  std_logic;                      -- System Clock
    RES       :in  std_logic;                      -- Synchronous reset
    OPCODE    :in  std_logic_vector(2 downto 0);   -- Logic Unit Opcode
    A         :in  std_logic_vector(7 downto 0);   -- A input bus
    B         :in  std_logic_vector(7 downto 0);   -- B input bus
    Q         :out std_logic_vector(7 downto 0));  -- Q output from Logic Unit     
end register_alu;

architecture behavioral of register_alu is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if RES = '1' then
                Q <= (others => '0');
            else
              case OPCODE is
                    when "000" => 
                        Q <= not(A);  
                    when "001" => 
                        Q <= not(A xor B);
                    when "010" => 
                        Q <= not(A or B); 
                    when "011" => 
                        Q <= not(A and B);
                    when "100" => 
                        Q <= A;              
                    when "101" => 
                        Q <= (A xor B); 
                    when "110" => 
                        Q <= (A or B);   
                    when "111" => 
                        Q <= (A and B); 
                    when others =>
                        Q <= (others => '0');
                end case;
            end if;
         end if;
     end process;
 end behavioral;