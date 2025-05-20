//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Tue May 20 06:14:28 2025
//Host        : ANV-15 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_rst_n,
    img_in_allocatedFlag,
    img_in_cols,
    img_in_data_empty_n,
    img_in_data_rd_data,
    img_in_data_rd_en,
    img_in_rows,
    img_in_size,
    img_out_allocatedFlag,
    img_out_cols,
    img_out_data_full_n,
    img_out_data_wr_data,
    img_out_data_wr_en,
    img_out_rows,
    img_out_size,
    img_template_allocatedFlag,
    img_template_cols,
    img_template_data_empty_n,
    img_template_data_rd_data,
    img_template_data_rd_en,
    img_template_rows,
    img_template_size,
    interrupt,
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
    s_axi_control_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 303000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_IN_ALLOCATEDFLAG DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_IN_ALLOCATEDFLAG, LAYERED_METADATA undef" *) input [7:0]img_in_allocatedFlag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_IN_COLS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_IN_COLS, LAYERED_METADATA undef" *) input [31:0]img_in_cols;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data EMPTY_N" *) (* X_INTERFACE_MODE = "Master" *) input img_in_data_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data RD_DATA" *) input [7:0]img_in_data_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_in_data RD_EN" *) output img_in_data_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_IN_ROWS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_IN_ROWS, LAYERED_METADATA undef" *) input [31:0]img_in_rows;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_IN_SIZE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_IN_SIZE, LAYERED_METADATA undef" *) input [31:0]img_in_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_OUT_ALLOCATEDFLAG DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_OUT_ALLOCATEDFLAG, LAYERED_METADATA undef" *) input [7:0]img_out_allocatedFlag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_OUT_COLS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_OUT_COLS, LAYERED_METADATA undef" *) input [31:0]img_out_cols;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data FULL_N" *) (* X_INTERFACE_MODE = "Master" *) input img_out_data_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data WR_DATA" *) output [15:0]img_out_data_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 img_out_data WR_EN" *) output img_out_data_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_OUT_ROWS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_OUT_ROWS, LAYERED_METADATA undef" *) input [31:0]img_out_rows;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_OUT_SIZE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_OUT_SIZE, LAYERED_METADATA undef" *) input [31:0]img_out_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_TEMPLATE_ALLOCATEDFLAG DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_TEMPLATE_ALLOCATEDFLAG, LAYERED_METADATA undef" *) input [7:0]img_template_allocatedFlag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_TEMPLATE_COLS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_TEMPLATE_COLS, LAYERED_METADATA undef" *) input [31:0]img_template_cols;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data EMPTY_N" *) (* X_INTERFACE_MODE = "Master" *) input img_template_data_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data RD_DATA" *) input [7:0]img_template_data_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 img_template_data RD_EN" *) output img_template_data_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_TEMPLATE_ROWS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_TEMPLATE_ROWS, LAYERED_METADATA undef" *) input [31:0]img_template_rows;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMG_TEMPLATE_SIZE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMG_TEMPLATE_SIZE, LAYERED_METADATA undef" *) input [31:0]img_template_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 303000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [3:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [3:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_wvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]img_in_allocatedFlag;
  wire [31:0]img_in_cols;
  wire img_in_data_empty_n;
  wire [7:0]img_in_data_rd_data;
  wire img_in_data_rd_en;
  wire [31:0]img_in_rows;
  wire [31:0]img_in_size;
  wire [7:0]img_out_allocatedFlag;
  wire [31:0]img_out_cols;
  wire img_out_data_full_n;
  wire [15:0]img_out_data_wr_data;
  wire img_out_data_wr_en;
  wire [31:0]img_out_rows;
  wire [31:0]img_out_size;
  wire [7:0]img_template_allocatedFlag;
  wire [31:0]img_template_cols;
  wire img_template_data_empty_n;
  wire [7:0]img_template_data_rd_data;
  wire img_template_data_rd_en;
  wire [31:0]img_template_rows;
  wire [31:0]img_template_size;
  wire interrupt;
  wire [3:0]s_axi_control_araddr;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [3:0]s_axi_control_awaddr;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;

  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .img_in_allocatedFlag(img_in_allocatedFlag),
        .img_in_cols(img_in_cols),
        .img_in_data_dout(img_in_data_rd_data),
        .img_in_data_empty_n(img_in_data_empty_n),
        .img_in_data_read(img_in_data_rd_en),
        .img_in_rows(img_in_rows),
        .img_in_size(img_in_size),
        .img_out_allocatedFlag(img_out_allocatedFlag),
        .img_out_cols(img_out_cols),
        .img_out_data_din(img_out_data_wr_data),
        .img_out_data_full_n(img_out_data_full_n),
        .img_out_data_write(img_out_data_wr_en),
        .img_out_rows(img_out_rows),
        .img_out_size(img_out_size),
        .img_template_allocatedFlag(img_template_allocatedFlag),
        .img_template_cols(img_template_cols),
        .img_template_data_dout(img_template_data_rd_data),
        .img_template_data_empty_n(img_template_data_empty_n),
        .img_template_data_read(img_template_data_rd_en),
        .img_template_rows(img_template_rows),
        .img_template_size(img_template_size),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_araddr),
        .s_axi_control_ARREADY(s_axi_control_arready),
        .s_axi_control_ARVALID(s_axi_control_arvalid),
        .s_axi_control_AWADDR(s_axi_control_awaddr),
        .s_axi_control_AWREADY(s_axi_control_awready),
        .s_axi_control_AWVALID(s_axi_control_awvalid),
        .s_axi_control_BREADY(s_axi_control_bready),
        .s_axi_control_BRESP(s_axi_control_bresp),
        .s_axi_control_BVALID(s_axi_control_bvalid),
        .s_axi_control_RDATA(s_axi_control_rdata),
        .s_axi_control_RREADY(s_axi_control_rready),
        .s_axi_control_RRESP(s_axi_control_rresp),
        .s_axi_control_RVALID(s_axi_control_rvalid),
        .s_axi_control_WDATA(s_axi_control_wdata),
        .s_axi_control_WREADY(s_axi_control_wready),
        .s_axi_control_WSTRB(s_axi_control_wstrb),
        .s_axi_control_WVALID(s_axi_control_wvalid));
endmodule
