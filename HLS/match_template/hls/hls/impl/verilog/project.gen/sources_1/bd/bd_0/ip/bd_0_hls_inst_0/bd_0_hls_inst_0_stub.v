// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue May 20 06:15:02 2025
// Host        : ANV-15 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/aanout/Documents/mestrado/exercicio_2/HLS/match_template/hls/hls/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,match_template,{}" *) (* CORE_GENERATION_INFO = "bd_0_hls_inst_0,match_template,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=match_template,x_ipVersion=1.0,x_ipCoreRevision=2114091134,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_ADDR_WIDTH=4,C_S_AXI_CONTROL_DATA_WIDTH=32}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "HLS" *) (* X_CORE_INFO = "match_template,Vivado 2024.2" *) (* hls_module = "yes" *) 
module bd_0_hls_inst_0(s_axi_control_ARADDR, 
  s_axi_control_ARREADY, s_axi_control_ARVALID, s_axi_control_AWADDR, 
  s_axi_control_AWREADY, s_axi_control_AWVALID, s_axi_control_BREADY, 
  s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_RDATA, s_axi_control_RREADY, 
  s_axi_control_RRESP, s_axi_control_RVALID, s_axi_control_WDATA, s_axi_control_WREADY, 
  s_axi_control_WSTRB, s_axi_control_WVALID, ap_clk, ap_rst_n, interrupt, img_in_data_dout, 
  img_in_data_empty_n, img_in_data_read, img_template_data_dout, 
  img_template_data_empty_n, img_template_data_read, img_out_data_din, 
  img_out_data_full_n, img_out_data_write, img_in_allocatedFlag, img_in_rows, img_in_cols, 
  img_in_size, img_template_allocatedFlag, img_template_rows, img_template_cols, 
  img_template_size, img_out_allocatedFlag, img_out_rows, img_out_cols, img_out_size)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_ARADDR[3:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[3:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_rst_n,interrupt,img_in_data_dout[7:0],img_in_data_empty_n,img_in_data_read,img_template_data_dout[7:0],img_template_data_empty_n,img_template_data_read,img_out_data_din[15:0],img_out_data_full_n,img_out_data_write,img_in_allocatedFlag[7:0],img_in_rows[31:0],img_in_cols[31:0],img_in_size[31:0],img_template_allocatedFlag[7:0],img_template_rows[31:0],img_template_cols[31:0],img_template_size[31:0],img_out_allocatedFlag[7:0],img_out_rows[31:0],img_out_cols[31:0],img_out_size[31:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 303000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [3:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 303000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data RD_DATA" *) (* X_INTERFACE_MODE = "master" *) input [7:0]img_in_data_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data EMPTY_N" *) input img_in_data_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data RD_EN" *) output img_in_data_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data RD_DATA" *) (* X_INTERFACE_MODE = "master" *) input [7:0]img_template_data_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data EMPTY_N" *) input img_template_data_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data RD_EN" *) output img_template_data_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data WR_DATA" *) (* X_INTERFACE_MODE = "master" *) output [15:0]img_out_data_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data FULL_N" *) input img_out_data_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data WR_EN" *) output img_out_data_write;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_in_allocatedFlag DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_in_allocatedFlag, LAYERED_METADATA undef" *) input [7:0]img_in_allocatedFlag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_in_rows DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_in_rows, LAYERED_METADATA undef" *) input [31:0]img_in_rows;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_in_cols DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_in_cols, LAYERED_METADATA undef" *) input [31:0]img_in_cols;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_in_size DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_in_size, LAYERED_METADATA undef" *) input [31:0]img_in_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_template_allocatedFlag DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_template_allocatedFlag, LAYERED_METADATA undef" *) input [7:0]img_template_allocatedFlag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_template_rows DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_template_rows, LAYERED_METADATA undef" *) input [31:0]img_template_rows;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_template_cols DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_template_cols, LAYERED_METADATA undef" *) input [31:0]img_template_cols;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_template_size DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_template_size, LAYERED_METADATA undef" *) input [31:0]img_template_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_out_allocatedFlag DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_out_allocatedFlag, LAYERED_METADATA undef" *) input [7:0]img_out_allocatedFlag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_out_rows DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_out_rows, LAYERED_METADATA undef" *) input [31:0]img_out_rows;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_out_cols DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_out_cols, LAYERED_METADATA undef" *) input [31:0]img_out_cols;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_out_size DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_out_size, LAYERED_METADATA undef" *) input [31:0]img_out_size;
endmodule
