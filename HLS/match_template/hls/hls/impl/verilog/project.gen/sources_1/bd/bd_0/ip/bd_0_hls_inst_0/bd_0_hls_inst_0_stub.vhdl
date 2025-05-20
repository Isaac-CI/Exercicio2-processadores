-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Tue May 20 06:15:03 2025
-- Host        : ANV-15 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/aanout/Documents/mestrado/exercicio_2/HLS/match_template/hls/hls/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s25csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    img_in_data_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    img_in_data_empty_n : in STD_LOGIC;
    img_in_data_read : out STD_LOGIC;
    img_template_data_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    img_template_data_empty_n : in STD_LOGIC;
    img_template_data_read : out STD_LOGIC;
    img_out_data_din : out STD_LOGIC_VECTOR ( 15 downto 0 );
    img_out_data_full_n : in STD_LOGIC;
    img_out_data_write : out STD_LOGIC;
    img_in_allocatedFlag : in STD_LOGIC_VECTOR ( 7 downto 0 );
    img_in_rows : in STD_LOGIC_VECTOR ( 31 downto 0 );
    img_in_cols : in STD_LOGIC_VECTOR ( 31 downto 0 );
    img_in_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    img_template_allocatedFlag : in STD_LOGIC_VECTOR ( 7 downto 0 );
    img_template_rows : in STD_LOGIC_VECTOR ( 31 downto 0 );
    img_template_cols : in STD_LOGIC_VECTOR ( 31 downto 0 );
    img_template_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    img_out_allocatedFlag : in STD_LOGIC_VECTOR ( 7 downto 0 );
    img_out_rows : in STD_LOGIC_VECTOR ( 31 downto 0 );
    img_out_cols : in STD_LOGIC_VECTOR ( 31 downto 0 );
    img_out_size : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,match_template,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,match_template,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=match_template,x_ipVersion=1.0,x_ipCoreRevision=2114091134,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_ADDR_WIDTH=4,C_S_AXI_CONTROL_DATA_WIDTH=32}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_0_hls_inst_0 : entity is "HLS";
  attribute hls_module : string;
  attribute hls_module of bd_0_hls_inst_0 : entity is "yes";
end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "s_axi_control_ARADDR[3:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[3:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_clk,ap_rst_n,interrupt,img_in_data_dout[7:0],img_in_data_empty_n,img_in_data_read,img_template_data_dout[7:0],img_template_data_empty_n,img_template_data_read,img_out_data_din[15:0],img_out_data_full_n,img_out_data_write,img_in_allocatedFlag[7:0],img_in_rows[31:0],img_in_cols[31:0],img_in_size[31:0],img_template_allocatedFlag[7:0],img_template_rows[31:0],img_template_cols[31:0],img_template_size[31:0],img_out_allocatedFlag[7:0],img_out_rows[31:0],img_out_cols[31:0],img_out_size[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s_axi_control_ARADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_control_ARADDR : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 303000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 303000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of img_in_data_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 img_in_data RD_DATA";
  attribute X_INTERFACE_MODE of img_in_data_dout : signal is "master";
  attribute X_INTERFACE_INFO of img_in_data_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 img_in_data EMPTY_N";
  attribute X_INTERFACE_INFO of img_in_data_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 img_in_data RD_EN";
  attribute X_INTERFACE_INFO of img_template_data_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 img_template_data RD_DATA";
  attribute X_INTERFACE_MODE of img_template_data_dout : signal is "master";
  attribute X_INTERFACE_INFO of img_template_data_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 img_template_data EMPTY_N";
  attribute X_INTERFACE_INFO of img_template_data_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 img_template_data RD_EN";
  attribute X_INTERFACE_INFO of img_out_data_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 img_out_data WR_DATA";
  attribute X_INTERFACE_MODE of img_out_data_din : signal is "master";
  attribute X_INTERFACE_INFO of img_out_data_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 img_out_data FULL_N";
  attribute X_INTERFACE_INFO of img_out_data_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 img_out_data WR_EN";
  attribute X_INTERFACE_INFO of img_in_allocatedFlag : signal is "xilinx.com:signal:data:1.0 img_in_allocatedFlag DATA";
  attribute X_INTERFACE_MODE of img_in_allocatedFlag : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_in_allocatedFlag : signal is "XIL_INTERFACENAME img_in_allocatedFlag, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_in_rows : signal is "xilinx.com:signal:data:1.0 img_in_rows DATA";
  attribute X_INTERFACE_MODE of img_in_rows : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_in_rows : signal is "XIL_INTERFACENAME img_in_rows, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_in_cols : signal is "xilinx.com:signal:data:1.0 img_in_cols DATA";
  attribute X_INTERFACE_MODE of img_in_cols : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_in_cols : signal is "XIL_INTERFACENAME img_in_cols, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_in_size : signal is "xilinx.com:signal:data:1.0 img_in_size DATA";
  attribute X_INTERFACE_MODE of img_in_size : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_in_size : signal is "XIL_INTERFACENAME img_in_size, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_template_allocatedFlag : signal is "xilinx.com:signal:data:1.0 img_template_allocatedFlag DATA";
  attribute X_INTERFACE_MODE of img_template_allocatedFlag : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_template_allocatedFlag : signal is "XIL_INTERFACENAME img_template_allocatedFlag, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_template_rows : signal is "xilinx.com:signal:data:1.0 img_template_rows DATA";
  attribute X_INTERFACE_MODE of img_template_rows : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_template_rows : signal is "XIL_INTERFACENAME img_template_rows, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_template_cols : signal is "xilinx.com:signal:data:1.0 img_template_cols DATA";
  attribute X_INTERFACE_MODE of img_template_cols : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_template_cols : signal is "XIL_INTERFACENAME img_template_cols, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_template_size : signal is "xilinx.com:signal:data:1.0 img_template_size DATA";
  attribute X_INTERFACE_MODE of img_template_size : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_template_size : signal is "XIL_INTERFACENAME img_template_size, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_out_allocatedFlag : signal is "xilinx.com:signal:data:1.0 img_out_allocatedFlag DATA";
  attribute X_INTERFACE_MODE of img_out_allocatedFlag : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_out_allocatedFlag : signal is "XIL_INTERFACENAME img_out_allocatedFlag, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_out_rows : signal is "xilinx.com:signal:data:1.0 img_out_rows DATA";
  attribute X_INTERFACE_MODE of img_out_rows : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_out_rows : signal is "XIL_INTERFACENAME img_out_rows, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_out_cols : signal is "xilinx.com:signal:data:1.0 img_out_cols DATA";
  attribute X_INTERFACE_MODE of img_out_cols : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_out_cols : signal is "XIL_INTERFACENAME img_out_cols, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of img_out_size : signal is "xilinx.com:signal:data:1.0 img_out_size DATA";
  attribute X_INTERFACE_MODE of img_out_size : signal is "slave";
  attribute X_INTERFACE_PARAMETER of img_out_size : signal is "XIL_INTERFACENAME img_out_size, LAYERED_METADATA undef";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "match_template,Vivado 2024.2";
begin
end;
