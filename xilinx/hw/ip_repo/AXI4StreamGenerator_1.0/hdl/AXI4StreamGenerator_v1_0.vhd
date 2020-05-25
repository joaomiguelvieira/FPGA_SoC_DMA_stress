library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI4StreamGenerator_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface SG_Ctrl
		C_SG_Ctrl_DATA_WIDTH	: integer	:= 32;
		C_SG_Ctrl_ADDR_WIDTH	: integer	:= 4;

		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 64;
		C_M00_AXIS_START_COUNT	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M01_AXIS
		C_M01_AXIS_TDATA_WIDTH	: integer	:= 64;
		C_M01_AXIS_START_COUNT	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M02_AXIS
		C_M02_AXIS_TDATA_WIDTH	: integer	:= 64;
		C_M02_AXIS_START_COUNT	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M03_AXIS
		C_M03_AXIS_TDATA_WIDTH	: integer	:= 64;
		C_M03_AXIS_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
		led_port : out std_logic_vector(3 downto 0);

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface SG_Ctrl
		sg_ctrl_aclk	: in std_logic;
		sg_ctrl_aresetn	: in std_logic;
		sg_ctrl_awaddr	: in std_logic_vector(C_SG_Ctrl_ADDR_WIDTH-1 downto 0);
		sg_ctrl_awprot	: in std_logic_vector(2 downto 0);
		sg_ctrl_awvalid	: in std_logic;
		sg_ctrl_awready	: out std_logic;
		sg_ctrl_wdata	: in std_logic_vector(C_SG_Ctrl_DATA_WIDTH-1 downto 0);
		sg_ctrl_wstrb	: in std_logic_vector((C_SG_Ctrl_DATA_WIDTH/8)-1 downto 0);
		sg_ctrl_wvalid	: in std_logic;
		sg_ctrl_wready	: out std_logic;
		sg_ctrl_bresp	: out std_logic_vector(1 downto 0);
		sg_ctrl_bvalid	: out std_logic;
		sg_ctrl_bready	: in std_logic;
		sg_ctrl_araddr	: in std_logic_vector(C_SG_Ctrl_ADDR_WIDTH-1 downto 0);
		sg_ctrl_arprot	: in std_logic_vector(2 downto 0);
		sg_ctrl_arvalid	: in std_logic;
		sg_ctrl_arready	: out std_logic;
		sg_ctrl_rdata	: out std_logic_vector(C_SG_Ctrl_DATA_WIDTH-1 downto 0);
		sg_ctrl_rresp	: out std_logic_vector(1 downto 0);
		sg_ctrl_rvalid	: out std_logic;
		sg_ctrl_rready	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic;

		-- Ports of Axi Master Bus Interface M01_AXIS
		m01_axis_aclk	: in std_logic;
		m01_axis_aresetn	: in std_logic;
		m01_axis_tvalid	: out std_logic;
		m01_axis_tdata	: out std_logic_vector(C_M01_AXIS_TDATA_WIDTH-1 downto 0);
		m01_axis_tstrb	: out std_logic_vector((C_M01_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m01_axis_tlast	: out std_logic;
		m01_axis_tready	: in std_logic;

		-- Ports of Axi Master Bus Interface M02_AXIS
		m02_axis_aclk	: in std_logic;
		m02_axis_aresetn	: in std_logic;
		m02_axis_tvalid	: out std_logic;
		m02_axis_tdata	: out std_logic_vector(C_M02_AXIS_TDATA_WIDTH-1 downto 0);
		m02_axis_tstrb	: out std_logic_vector((C_M02_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m02_axis_tlast	: out std_logic;
		m02_axis_tready	: in std_logic;

		-- Ports of Axi Master Bus Interface M03_AXIS
		m03_axis_aclk	: in std_logic;
		m03_axis_aresetn	: in std_logic;
		m03_axis_tvalid	: out std_logic;
		m03_axis_tdata	: out std_logic_vector(C_M03_AXIS_TDATA_WIDTH-1 downto 0);
		m03_axis_tstrb	: out std_logic_vector((C_M03_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m03_axis_tlast	: out std_logic;
		m03_axis_tready	: in std_logic
	);
end AXI4StreamGenerator_v1_0;

architecture arch_imp of AXI4StreamGenerator_v1_0 is

	-- component declaration
	component AXI4StreamGenerator_v1_0_SG_Ctrl is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic;
		registered_value : out std_logic_vector(31 downto 0)
		);
	end component AXI4StreamGenerator_v1_0_SG_Ctrl;
	
	signal registered_value : std_logic_vector(31 downto 0);
	signal counter0, counter1, counter2, counter3: unsigned(31 downto 0);
	signal maxCount : std_logic_vector(31 downto 0);

begin

-- Instantiation of Axi Bus Interface SG_Ctrl
AXI4StreamGenerator_v1_0_SG_Ctrl_inst : AXI4StreamGenerator_v1_0_SG_Ctrl
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_SG_Ctrl_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_SG_Ctrl_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> sg_ctrl_aclk,
		S_AXI_ARESETN	=> sg_ctrl_aresetn,
		S_AXI_AWADDR	=> sg_ctrl_awaddr,
		S_AXI_AWPROT	=> sg_ctrl_awprot,
		S_AXI_AWVALID	=> sg_ctrl_awvalid,
		S_AXI_AWREADY	=> sg_ctrl_awready,
		S_AXI_WDATA	=> sg_ctrl_wdata,
		S_AXI_WSTRB	=> sg_ctrl_wstrb,
		S_AXI_WVALID	=> sg_ctrl_wvalid,
		S_AXI_WREADY	=> sg_ctrl_wready,
		S_AXI_BRESP	=> sg_ctrl_bresp,
		S_AXI_BVALID	=> sg_ctrl_bvalid,
		S_AXI_BREADY	=> sg_ctrl_bready,
		S_AXI_ARADDR	=> sg_ctrl_araddr,
		S_AXI_ARPROT	=> sg_ctrl_arprot,
		S_AXI_ARVALID	=> sg_ctrl_arvalid,
		S_AXI_ARREADY	=> sg_ctrl_arready,
		S_AXI_RDATA	=> sg_ctrl_rdata,
		S_AXI_RRESP	=> sg_ctrl_rresp,
		S_AXI_RVALID	=> sg_ctrl_rvalid,
		S_AXI_RREADY	=> sg_ctrl_rready,
		registered_value => registered_value
	);

	-- Add user logic here
	process (m00_axis_aclk)
    begin
        m00_axis_tvalid <= '0'; m00_axis_tlast  <= '0';
        m01_axis_tvalid <= '0'; m01_axis_tlast  <= '0';
        m02_axis_tvalid <= '0'; m02_axis_tlast  <= '0';
        m03_axis_tvalid <= '0'; m03_axis_tlast  <= '0';
        
        if (m00_axis_aclk'event and m00_axis_aclk = '1') then
            if (m00_axis_aresetn = '0') then
                counter0 <= (others => '0');
                counter1 <= (others => '0');
                counter2 <= (others => '0');
                counter3 <= (others => '0');
            else
                -- counter 0
                if (m00_axis_tready = '1') then
                    m00_axis_tvalid <= '1';
                    counter0 <= counter0 + 1;
                    
                    if (std_logic_vector(counter0) = maxCount) then
                        m00_axis_tlast  <= '1';
                        counter0 <= (others => '0');
                    end if;
                end if;
                -- counter 1
                if (m01_axis_tready = '1') then
                    m01_axis_tvalid <= '1';
                    counter1 <= counter1 + 1;
                    
                    if (std_logic_vector(counter1) = maxCount) then
                        m01_axis_tlast  <= '1';
                        counter1 <= (others => '0');
                    end if;
                end if;
                -- counter 2
                if (m02_axis_tready = '1') then
                    m02_axis_tvalid <= '1';
                    counter2 <= counter2 + 1;
                    
                    if (std_logic_vector(counter2) = maxCount) then
                        m02_axis_tlast  <= '1';
                        counter2 <= (others => '0');
                    end if;
                end if;
                -- counter 3
                if (m03_axis_tready = '1') then
                    m03_axis_tvalid <= '1';
                    counter3 <= counter3 + 1;
                    
                    if (std_logic_vector(counter3) = maxCount) then
                        m03_axis_tlast  <= '1';
                        counter3 <= (others => '0');
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    m00_axis_tdata  <= (0 => '1', 32 => '1', others => '0'); m00_axis_tstrb  <= (others => '1');
    m01_axis_tdata  <= (0 => '1', 32 => '1', others => '0'); m01_axis_tstrb  <= (others => '1');
    m02_axis_tdata  <= (0 => '1', 32 => '1', others => '0'); m02_axis_tstrb  <= (others => '1');
    m03_axis_tdata  <= (0 => '1', 32 => '1', others => '0'); m03_axis_tstrb  <= (others => '1');
    
    led_port <= registered_value(21 downto 18);
    maxCount <= registered_value(31 downto 0);

	-- User logic ends

end arch_imp;
