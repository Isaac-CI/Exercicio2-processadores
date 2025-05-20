//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Tue May 20 06:14:28 2025
//Host        : ANV-15 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
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
  input ap_clk;
  input ap_rst_n;
  input [7:0]img_in_allocatedFlag;
  input [31:0]img_in_cols;
  input img_in_data_empty_n;
  input [7:0]img_in_data_rd_data;
  output img_in_data_rd_en;
  input [31:0]img_in_rows;
  input [31:0]img_in_size;
  input [7:0]img_out_allocatedFlag;
  input [31:0]img_out_cols;
  input img_out_data_full_n;
  output [15:0]img_out_data_wr_data;
  output img_out_data_wr_en;
  input [31:0]img_out_rows;
  input [31:0]img_out_size;
  input [7:0]img_template_allocatedFlag;
  input [31:0]img_template_cols;
  input img_template_data_empty_n;
  input [7:0]img_template_data_rd_data;
  output img_template_data_rd_en;
  input [31:0]img_template_rows;
  input [31:0]img_template_size;
  output interrupt;
  input [3:0]s_axi_control_araddr;
  output s_axi_control_arready;
  input s_axi_control_arvalid;
  input [3:0]s_axi_control_awaddr;
  output s_axi_control_awready;
  input s_axi_control_awvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  output s_axi_control_bvalid;
  output [31:0]s_axi_control_rdata;
  input s_axi_control_rready;
  output [1:0]s_axi_control_rresp;
  output s_axi_control_rvalid;
  input [31:0]s_axi_control_wdata;
  output s_axi_control_wready;
  input [3:0]s_axi_control_wstrb;
  input s_axi_control_wvalid;

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

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .img_in_allocatedFlag(img_in_allocatedFlag),
        .img_in_cols(img_in_cols),
        .img_in_data_empty_n(img_in_data_empty_n),
        .img_in_data_rd_data(img_in_data_rd_data),
        .img_in_data_rd_en(img_in_data_rd_en),
        .img_in_rows(img_in_rows),
        .img_in_size(img_in_size),
        .img_out_allocatedFlag(img_out_allocatedFlag),
        .img_out_cols(img_out_cols),
        .img_out_data_full_n(img_out_data_full_n),
        .img_out_data_wr_data(img_out_data_wr_data),
        .img_out_data_wr_en(img_out_data_wr_en),
        .img_out_rows(img_out_rows),
        .img_out_size(img_out_size),
        .img_template_allocatedFlag(img_template_allocatedFlag),
        .img_template_cols(img_template_cols),
        .img_template_data_empty_n(img_template_data_empty_n),
        .img_template_data_rd_data(img_template_data_rd_data),
        .img_template_data_rd_en(img_template_data_rd_en),
        .img_template_rows(img_template_rows),
        .img_template_size(img_template_size),
        .interrupt(interrupt),
        .s_axi_control_araddr(s_axi_control_araddr),
        .s_axi_control_arready(s_axi_control_arready),
        .s_axi_control_arvalid(s_axi_control_arvalid),
        .s_axi_control_awaddr(s_axi_control_awaddr),
        .s_axi_control_awready(s_axi_control_awready),
        .s_axi_control_awvalid(s_axi_control_awvalid),
        .s_axi_control_bready(s_axi_control_bready),
        .s_axi_control_bresp(s_axi_control_bresp),
        .s_axi_control_bvalid(s_axi_control_bvalid),
        .s_axi_control_rdata(s_axi_control_rdata),
        .s_axi_control_rready(s_axi_control_rready),
        .s_axi_control_rresp(s_axi_control_rresp),
        .s_axi_control_rvalid(s_axi_control_rvalid),
        .s_axi_control_wdata(s_axi_control_wdata),
        .s_axi_control_wready(s_axi_control_wready),
        .s_axi_control_wstrb(s_axi_control_wstrb),
        .s_axi_control_wvalid(s_axi_control_wvalid));
endmodule
