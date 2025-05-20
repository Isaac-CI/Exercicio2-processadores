// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module bd_0 (
  ap_clk,
  ap_rst_n,
  img_in_allocatedFlag,
  img_in_cols,
  img_in_rows,
  img_in_size,
  img_out_allocatedFlag,
  img_out_cols,
  img_out_rows,
  img_out_size,
  img_template_allocatedFlag,
  img_template_cols,
  img_template_rows,
  img_template_size,
  interrupt,
  img_in_data_rd_data,
  img_in_data_empty_n,
  img_in_data_rd_en,
  img_out_data_wr_data,
  img_out_data_full_n,
  img_out_data_wr_en,
  img_template_data_rd_data,
  img_template_data_empty_n,
  img_template_data_rd_en,
  s_axi_control_araddr,
  s_axi_control_arready,
  s_axi_control_arvalid,
  s_axi_control_awaddr,
  s_axi_control_awready,
  s_axi_control_awvalid,
  s_axi_control_bready,
  s_axi_control_bresp,
  s_axi_control_bvalid,
  s_axi_control_rdata,
  s_axi_control_rready,
  s_axi_control_rresp,
  s_axi_control_rvalid,
  s_axi_control_wdata,
  s_axi_control_wready,
  s_axi_control_wstrb,
  s_axi_control_wvalid
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.AP_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, FREQ_HZ 303000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, INSERT_VIP 0" *)
  input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *)
  (* X_INTERFACE_MODE = "slave RST.AP_RST_N" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_IN_ALLOCATEDFLAG DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_IN_ALLOCATEDFLAG" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_IN_ALLOCATEDFLAG, LAYERED_METADATA undef" *)
  input [7:0]img_in_allocatedFlag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_IN_COLS DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_IN_COLS" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_IN_COLS, LAYERED_METADATA undef" *)
  input [31:0]img_in_cols;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_IN_ROWS DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_IN_ROWS" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_IN_ROWS, LAYERED_METADATA undef" *)
  input [31:0]img_in_rows;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_IN_SIZE DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_IN_SIZE" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_IN_SIZE, LAYERED_METADATA undef" *)
  input [31:0]img_in_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_OUT_ALLOCATEDFLAG DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_OUT_ALLOCATEDFLAG" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_OUT_ALLOCATEDFLAG, LAYERED_METADATA undef" *)
  input [7:0]img_out_allocatedFlag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_OUT_COLS DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_OUT_COLS" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_OUT_COLS, LAYERED_METADATA undef" *)
  input [31:0]img_out_cols;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_OUT_ROWS DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_OUT_ROWS" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_OUT_ROWS, LAYERED_METADATA undef" *)
  input [31:0]img_out_rows;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_OUT_SIZE DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_OUT_SIZE" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_OUT_SIZE, LAYERED_METADATA undef" *)
  input [31:0]img_out_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_TEMPLATE_ALLOCATEDFLAG DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_TEMPLATE_ALLOCATEDFLAG" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_TEMPLATE_ALLOCATEDFLAG, LAYERED_METADATA undef" *)
  input [7:0]img_template_allocatedFlag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_TEMPLATE_COLS DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_TEMPLATE_COLS" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_TEMPLATE_COLS, LAYERED_METADATA undef" *)
  input [31:0]img_template_cols;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_TEMPLATE_ROWS DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_TEMPLATE_ROWS" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_TEMPLATE_ROWS, LAYERED_METADATA undef" *)
  input [31:0]img_template_rows;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_TEMPLATE_SIZE DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.IMG_TEMPLATE_SIZE" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_TEMPLATE_SIZE, LAYERED_METADATA undef" *)
  input [31:0]img_template_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.INTERRUPT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data RD_DATA" *)
  (* X_INTERFACE_MODE = "master img_in_data" *)
  input [7:0]img_in_data_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data EMPTY_N" *)
  input img_in_data_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data RD_EN" *)
  output img_in_data_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data WR_DATA" *)
  (* X_INTERFACE_MODE = "master img_out_data" *)
  output [15:0]img_out_data_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data FULL_N" *)
  input img_out_data_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data WR_EN" *)
  output img_out_data_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data RD_DATA" *)
  (* X_INTERFACE_MODE = "master img_template_data" *)
  input [7:0]img_template_data_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data EMPTY_N" *)
  input img_template_data_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data RD_EN" *)
  output img_template_data_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
  (* X_INTERFACE_MODE = "slave s_axi_control" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 303000000.0, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  input [3:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
  output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
  input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
  input [3:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
  output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
  input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
  input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
  output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
  output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
  output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
  input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
  output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
  output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
  input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
  output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
  input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
  input s_axi_control_wvalid;

  // stub module has no contents

endmodule
