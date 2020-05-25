library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI4StreamConstant_v1_0 is
	generic (
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 64
	);
	port (
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic
	);
end AXI4StreamConstant_v1_0;

architecture arch_imp of AXI4StreamConstant_v1_0 is

signal counter : integer;
constant maxCount : integer := 16#3fffff#;

begin

process (m00_axis_aclk)
begin
    m00_axis_tvalid <= '0';
    m00_axis_tlast  <= '0';
    
    if (m00_axis_aclk'event and m00_axis_aclk = '1') then
        if (m00_axis_aresetn = '0') then
            counter <= 0;
        else
            if (m00_axis_tready = '1') then
                m00_axis_tvalid <= '1';
                counter <= counter + 1;
                
                if (counter = maxCount) then
                    m00_axis_tlast  <= '1';
                    counter <= 0;
                end if;
            end if;
        end if;
    end if;
end process;

m00_axis_tdata  <= (0 => '1', others => '0');
m00_axis_tstrb  <= (others => '1');

end arch_imp;
