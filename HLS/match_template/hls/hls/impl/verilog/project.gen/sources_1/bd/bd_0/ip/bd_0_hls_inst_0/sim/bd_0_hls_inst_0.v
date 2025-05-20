// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:match_template:1.0
// IP Revision: 2114091134

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  s_axi_control_ARADDR,
  s_axi_control_ARREADY,
  s_axi_control_ARVALID,
  s_axi_control_AWADDR,
  s_axi_control_AWREADY,
  s_axi_control_AWVALID,
  s_axi_control_BREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_RDATA,
  s_axi_control_RREADY,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_WDATA,
  s_axi_control_WREADY,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  ap_clk,
  ap_rst_n,
  interrupt,
  img_in_data_dout,
  img_in_data_empty_n,
  img_in_data_read,
  img_template_data_dout,
  img_template_data_empty_n,
  img_template_data_read,
  img_out_data_din,
  img_out_data_full_n,
  img_out_data_write,
  img_in_allocatedFlag,
  img_in_rows,
  img_in_cols,
  img_in_size,
  img_template_allocatedFlag,
  img_template_rows,
  img_template_cols,
  img_template_size,
  img_out_allocatedFlag,
  img_out_rows,
  img_out_cols,
  img_out_size
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 303000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [3 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [3 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 303000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data RD_DATA" *)
(* X_INTERFACE_MODE = "master" *)
input wire [7 : 0] img_in_data_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data EMPTY_N" *)
input wire img_in_data_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data RD_EN" *)
output wire img_in_data_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data RD_DATA" *)
(* X_INTERFACE_MODE = "master" *)
input wire [7 : 0] img_template_data_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data EMPTY_N" *)
input wire img_template_data_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data RD_EN" *)
output wire img_template_data_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data WR_DATA" *)
(* X_INTERFACE_MODE = "master" *)
output wire [15 : 0] img_out_data_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data FULL_N" *)
input wire img_out_data_full_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data WR_EN" *)
output wire img_out_data_write;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_in_allocatedFlag DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_in_allocatedFlag, LAYERED_METADATA undef" *)
input wire [7 : 0] img_in_allocatedFlag;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_in_rows DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_in_rows, LAYERED_METADATA undef" *)
input wire [31 : 0] img_in_rows;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_in_cols DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_in_cols, LAYERED_METADATA undef" *)
input wire [31 : 0] img_in_cols;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_in_size DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_in_size, LAYERED_METADATA undef" *)
input wire [31 : 0] img_in_size;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_template_allocatedFlag DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_template_allocatedFlag, LAYERED_METADATA undef" *)
input wire [7 : 0] img_template_allocatedFlag;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_template_rows DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_template_rows, LAYERED_METADATA undef" *)
input wire [31 : 0] img_template_rows;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_template_cols DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_template_cols, LAYERED_METADATA undef" *)
input wire [31 : 0] img_template_cols;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_template_size DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_template_size, LAYERED_METADATA undef" *)
input wire [31 : 0] img_template_size;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_out_allocatedFlag DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_out_allocatedFlag, LAYERED_METADATA undef" *)
input wire [7 : 0] img_out_allocatedFlag;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_out_rows DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_out_rows, LAYERED_METADATA undef" *)
input wire [31 : 0] img_out_rows;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_out_cols DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_out_cols, LAYERED_METADATA undef" *)
input wire [31 : 0] img_out_cols;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 img_out_size DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME img_out_size, LAYERED_METADATA undef" *)
input wire [31 : 0] img_out_size;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  match_template #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(4),
    .C_S_AXI_CONTROL_DATA_WIDTH(32)
  ) inst (
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .img_in_data_dout(img_in_data_dout),
    .img_in_data_empty_n(img_in_data_empty_n),
    .img_in_data_read(img_in_data_read),
    .img_template_data_dout(img_template_data_dout),
    .img_template_data_empty_n(img_template_data_empty_n),
    .img_template_data_read(img_template_data_read),
    .img_out_data_din(img_out_data_din),
    .img_out_data_full_n(img_out_data_full_n),
    .img_out_data_write(img_out_data_write),
    .img_in_allocatedFlag(img_in_allocatedFlag),
    .img_in_rows(img_in_rows),
    .img_in_cols(img_in_cols),
    .img_in_size(img_in_size),
    .img_template_allocatedFlag(img_template_allocatedFlag),
    .img_template_rows(img_template_rows),
    .img_template_cols(img_template_cols),
    .img_template_size(img_template_size),
    .img_out_allocatedFlag(img_out_allocatedFlag),
    .img_out_rows(img_out_rows),
    .img_out_cols(img_out_cols),
    .img_out_size(img_out_size)
  );
endmodule
