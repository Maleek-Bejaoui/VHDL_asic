
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2025 03:22:36 PM
-- Design Name: 
-- Module Name: Compt_8bits - Behavioral
-- Project Name: 
-- Target Devices 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tt_um_Compt_8bits is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           cmpt : out STD_LOGIC_VECTOR (7 downto 0));
end tt_um_Compt_8bits;

architecture Behavioral of tt_um_Compt_8bits is

signal cc : unsigned (7 downto 0):="00000000";


begin

process(clk,rst)

begin
    if(clk'event and clk='1' ) then
        if(rst='1') then
            cc<= to_unsigned(0,8);
        elsif ( cc= to_unsigned(255,8) ) then 
            cc<= to_unsigned(0,8);
        else 
            cc<= cc + 1 ;
   end if ;
   end if;



end process; 
cmpt<= std_logic_vector(cc);

end Behavioral;
