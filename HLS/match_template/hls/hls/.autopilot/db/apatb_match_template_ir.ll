; ModuleID = '/home/aanout/Documents/mestrado/exercicio_2/HLS/match_template/hls/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.xf::cv::Mat<0, 100, 100, 1, 2>" = type { i8, i32, i32, i32, %"class.hls::stream<ap_uint<8>, 2>" }
%"class.hls::stream<ap_uint<8>, 2>" = type { %"class.hls::stream<ap_uint<8>, 0>" }
%"class.hls::stream<ap_uint<8>, 0>" = type { %"struct.ap_uint<8>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"class.xf::cv::Mat<2, 91, 91, 1, 2>" = type { i8, i32, i32, i32, %"class.hls::stream<ap_uint<16>, 2>" }
%"class.hls::stream<ap_uint<16>, 2>" = type { %"class.hls::stream<ap_uint<16>, 0>" }
%"class.hls::stream<ap_uint<16>, 0>" = type { %"struct.ap_uint<16>" }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_match_template_ir(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias nocapture nonnull dereferenceable(20) %img_in, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias nocapture nonnull dereferenceable(20) %img_template, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* noalias nocapture nonnull dereferenceable(20) %img_out) local_unnamed_addr #1 {
entry:
  %img_in_copy.0 = alloca i8, align 512
  %img_in_copy.1 = alloca i32, align 512
  %img_in_copy.2 = alloca i32, align 512
  %img_in_copy.3 = alloca i32, align 512
  %img_in_copy.4 = alloca i8, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i8* %img_in_copy.4, i32 0) ]
  %img_template_copy.0 = alloca i8, align 512
  %img_template_copy.1 = alloca i32, align 512
  %img_template_copy.2 = alloca i32, align 512
  %img_template_copy.3 = alloca i32, align 512
  %img_template_copy.4 = alloca i8, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i8* %img_template_copy.4, i32 0) ]
  %img_out_copy.0 = alloca i8, align 512
  %img_out_copy.1 = alloca i32, align 512
  %img_out_copy.2 = alloca i32, align 512
  %img_out_copy.3 = alloca i32, align 512
  %img_out_copy.4 = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %img_out_copy.4, i32 0) ]
  call fastcc void @copy_in(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* nonnull %img_in, i8* nonnull align 512 %img_in_copy.0, i32* nonnull align 512 %img_in_copy.1, i32* nonnull align 512 %img_in_copy.2, i32* nonnull align 512 %img_in_copy.3, i8* nonnull align 512 %img_in_copy.4, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* nonnull %img_template, i8* nonnull align 512 %img_template_copy.0, i32* nonnull align 512 %img_template_copy.1, i32* nonnull align 512 %img_template_copy.2, i32* nonnull align 512 %img_template_copy.3, i8* nonnull align 512 %img_template_copy.4, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* nonnull %img_out, i8* nonnull align 512 %img_out_copy.0, i32* nonnull align 512 %img_out_copy.1, i32* nonnull align 512 %img_out_copy.2, i32* nonnull align 512 %img_out_copy.3, i16* nonnull align 512 %img_out_copy.4)
  call void @apatb_match_template_hw(i8* %img_in_copy.0, i32* %img_in_copy.1, i32* %img_in_copy.2, i32* %img_in_copy.3, i8* %img_in_copy.4, i8* %img_template_copy.0, i32* %img_template_copy.1, i32* %img_template_copy.2, i32* %img_template_copy.3, i8* %img_template_copy.4, i8* %img_out_copy.0, i32* %img_out_copy.1, i32* %img_out_copy.2, i32* %img_out_copy.3, i16* %img_out_copy.4)
  call void @copy_back(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %img_in, i8* %img_in_copy.0, i32* %img_in_copy.1, i32* %img_in_copy.2, i32* %img_in_copy.3, i8* %img_in_copy.4, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %img_template, i8* %img_template_copy.0, i32* %img_template_copy.1, i32* %img_template_copy.2, i32* %img_template_copy.3, i8* %img_template_copy.4, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %img_out, i8* %img_out_copy.0, i32* %img_out_copy.1, i32* %img_out_copy.2, i32* %img_out_copy.3, i16* %img_out_copy.4)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias "unpacked"="0", i8* noalias nocapture align 512 "unpacked"="1.0" %.0, i32* noalias nocapture align 512 "unpacked"="1.1" %.1, i32* noalias nocapture align 512 "unpacked"="1.2" %.2, i32* noalias nocapture align 512 "unpacked"="1.3" %.3, i8* noalias nocapture align 512 "unpacked"="1.4.0" %.4, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias "unpacked"="2", i8* noalias nocapture align 512 "unpacked"="3.0" %.01, i32* noalias nocapture align 512 "unpacked"="3.1" %.12, i32* noalias nocapture align 512 "unpacked"="3.2" %.23, i32* noalias nocapture align 512 "unpacked"="3.3" %.34, i8* noalias nocapture align 512 "unpacked"="3.4.0" %.45, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* noalias "unpacked"="4", i8* noalias nocapture align 512 "unpacked"="5.0" %.02, i32* noalias nocapture align 512 "unpacked"="5.1" %.13, i32* noalias nocapture align 512 "unpacked"="5.2" %.24, i32* noalias nocapture align 512 "unpacked"="5.3" %.35, i16* noalias nocapture align 512 "unpacked"="5.4.0" %.46) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<0, 100, 100, 1, 2>.13"(i8* align 512 %.0, i32* align 512 %.1, i32* align 512 %.2, i32* align 512 %.3, i8* align 512 %.4, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<0, 100, 100, 1, 2>.13"(i8* align 512 %.01, i32* align 512 %.12, i32* align 512 %.23, i32* align 512 %.34, i8* align 512 %.45, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<2, 91, 91, 1, 2>"(i8* align 512 %.02, i32* align 512 %.13, i32* align 512 %.24, i32* align 512 %.35, i16* align 512 %.46, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias "unpacked"="0", i8* noalias nocapture readonly align 512 "unpacked"="1.0" %.0, i32* noalias nocapture readonly align 512 "unpacked"="1.1" %.1, i32* noalias nocapture readonly align 512 "unpacked"="1.2" %.2, i32* noalias nocapture readonly align 512 "unpacked"="1.3" %.3, i8* noalias nocapture align 512 "unpacked"="1.4.0" %.4, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias "unpacked"="2", i8* noalias nocapture readonly align 512 "unpacked"="3.0" %.01, i32* noalias nocapture readonly align 512 "unpacked"="3.1" %.12, i32* noalias nocapture readonly align 512 "unpacked"="3.2" %.23, i32* noalias nocapture readonly align 512 "unpacked"="3.3" %.34, i8* noalias nocapture align 512 "unpacked"="3.4.0" %.45, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* noalias "unpacked"="4", i8* noalias nocapture readonly align 512 "unpacked"="5.0" %.02, i32* noalias nocapture readonly align 512 "unpacked"="5.1" %.13, i32* noalias nocapture readonly align 512 "unpacked"="5.2" %.24, i32* noalias nocapture readonly align 512 "unpacked"="5.3" %.35, i16* noalias nocapture align 512 "unpacked"="5.4.0" %.46) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<0, 100, 100, 1, 2>"(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %0, i8* align 512 %.0, i32* align 512 %.1, i32* align 512 %.2, i32* align 512 %.3, i8* align 512 %.4)
  call fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<0, 100, 100, 1, 2>"(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %1, i8* align 512 %.01, i32* align 512 %.12, i32* align 512 %.23, i32* align 512 %.34, i8* align 512 %.45)
  call fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<2, 91, 91, 1, 2>.22"(%"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %2, i8* align 512 %.02, i32* align 512 %.13, i32* align 512 %.24, i32* align 512 %.35, i16* align 512 %.46)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<2, 91, 91, 1, 2>"(i8* noalias nocapture align 512 "unpacked"="0.0" %dst.01, i32* noalias nocapture align 512 "unpacked"="0.1" %dst.12, i32* noalias nocapture align 512 "unpacked"="0.2" %dst.23, i32* noalias nocapture align 512 "unpacked"="0.3" %dst.34, i16* noalias nocapture align 512 "unpacked"="0.4.0" %dst.45, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* noalias "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %"class.xf::cv::Mat<2, 91, 91, 1, 2>", %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %src, i64 0, i32 0
  %1 = load i8, i8* %src.0, align 1
  store i8 %1, i8* %dst.01, align 512
  %src.1 = getelementptr %"class.xf::cv::Mat<2, 91, 91, 1, 2>", %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %src, i64 0, i32 1
  %2 = load i32, i32* %src.1, align 4
  store i32 %2, i32* %dst.12, align 512
  %src.2 = getelementptr %"class.xf::cv::Mat<2, 91, 91, 1, 2>", %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %src, i64 0, i32 2
  %3 = load i32, i32* %src.2, align 4
  store i32 %3, i32* %dst.23, align 512
  %src.3 = getelementptr %"class.xf::cv::Mat<2, 91, 91, 1, 2>", %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %src, i64 0, i32 3
  %4 = load i32, i32* %src.3, align 4
  store i32 %4, i32* %dst.34, align 512
  %src.4 = getelementptr %"class.xf::cv::Mat<2, 91, 91, 1, 2>", %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %src, i64 0, i32 4
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<16>, 2>.33"(i16* align 512 %dst.45, %"class.hls::stream<ap_uint<16>, 2>"* %src.4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<16>, 2>.33"(i16* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<16>, 2>"* noalias nocapture "unpacked"="1") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<16>, 2>"
  %3 = alloca i16
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<16>, 2>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<16>, 2>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<16>, 2>"* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<16>, 2>", %"class.hls::stream<ap_uint<16>, 2>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<16>, 2>" %8, 0, 0, 0, 0, 0
  store i16 %.evi, i16* %3
  %9 = bitcast i16* %3 to i8*
  %10 = bitcast i16* %0 to i8*
  call void @fpga_fifo_push_2(i8* %9, i8* %10)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<2, 91, 91, 1, 2>.22"(%"class.xf::cv::Mat<2, 91, 91, 1, 2>"* noalias "unpacked"="0" %dst, i8* noalias nocapture readonly align 512 "unpacked"="1.0" %src.01, i32* noalias nocapture readonly align 512 "unpacked"="1.1" %src.12, i32* noalias nocapture readonly align 512 "unpacked"="1.2" %src.23, i32* noalias nocapture readonly align 512 "unpacked"="1.3" %src.34, i16* noalias nocapture align 512 "unpacked"="1.4.0" %src.45) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %"class.xf::cv::Mat<2, 91, 91, 1, 2>", %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %dst, i64 0, i32 0
  %1 = load i8, i8* %src.01, align 512
  store i8 %1, i8* %dst.0, align 1
  %dst.1 = getelementptr %"class.xf::cv::Mat<2, 91, 91, 1, 2>", %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %dst, i64 0, i32 1
  %2 = load i32, i32* %src.12, align 512
  store i32 %2, i32* %dst.1, align 4
  %dst.2 = getelementptr %"class.xf::cv::Mat<2, 91, 91, 1, 2>", %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %dst, i64 0, i32 2
  %3 = load i32, i32* %src.23, align 512
  store i32 %3, i32* %dst.2, align 4
  %dst.3 = getelementptr %"class.xf::cv::Mat<2, 91, 91, 1, 2>", %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %dst, i64 0, i32 3
  %4 = load i32, i32* %src.34, align 512
  store i32 %4, i32* %dst.3, align 4
  %dst.4 = getelementptr %"class.xf::cv::Mat<2, 91, 91, 1, 2>", %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %dst, i64 0, i32 4
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<16>, 2>.42"(%"class.hls::stream<ap_uint<16>, 2>"* %dst.4, i16* align 512 %src.45)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<16>, 2>.42"(%"class.hls::stream<ap_uint<16>, 2>"* noalias nocapture "unpacked"="0", i16* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #5 {
entry:
  %2 = alloca i16
  %3 = alloca %"class.hls::stream<ap_uint<16>, 2>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i16* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i16* %2 to i8*
  %7 = bitcast i16* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile i16, i16* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<16>, 2>" undef, i16 %8, 0, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<16>, 2>" %.ivi, %"class.hls::stream<ap_uint<16>, 2>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<16>, 2>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<16>, 2>"* %0 to i8*
  call void @fpga_fifo_push_2(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<0, 100, 100, 1, 2>"(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias "unpacked"="0" %dst, i8* noalias nocapture readonly align 512 "unpacked"="1.0" %src.01, i32* noalias nocapture readonly align 512 "unpacked"="1.1" %src.12, i32* noalias nocapture readonly align 512 "unpacked"="1.2" %src.23, i32* noalias nocapture readonly align 512 "unpacked"="1.3" %src.34, i8* noalias nocapture align 512 "unpacked"="1.4.0" %src.45) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %"class.xf::cv::Mat<0, 100, 100, 1, 2>", %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %dst, i64 0, i32 0
  %1 = load i8, i8* %src.01, align 512
  store i8 %1, i8* %dst.0, align 1
  %dst.1 = getelementptr %"class.xf::cv::Mat<0, 100, 100, 1, 2>", %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %dst, i64 0, i32 1
  %2 = load i32, i32* %src.12, align 512
  store i32 %2, i32* %dst.1, align 4
  %dst.2 = getelementptr %"class.xf::cv::Mat<0, 100, 100, 1, 2>", %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %dst, i64 0, i32 2
  %3 = load i32, i32* %src.23, align 512
  store i32 %3, i32* %dst.2, align 4
  %dst.3 = getelementptr %"class.xf::cv::Mat<0, 100, 100, 1, 2>", %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %dst, i64 0, i32 3
  %4 = load i32, i32* %src.34, align 512
  store i32 %4, i32* %dst.3, align 4
  %dst.4 = getelementptr %"class.xf::cv::Mat<0, 100, 100, 1, 2>", %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %dst, i64 0, i32 4
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 2>.49"(%"class.hls::stream<ap_uint<8>, 2>"* %dst.4, i8* align 512 %src.45)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 2>.49"(%"class.hls::stream<ap_uint<8>, 2>"* noalias nocapture "unpacked"="0", i8* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #5 {
entry:
  %2 = alloca i8
  %3 = alloca %"class.hls::stream<ap_uint<8>, 2>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %1)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %2, i8* %1)
  %5 = load volatile i8, i8* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<8>, 2>" undef, i8 %5, 0, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<8>, 2>" %.ivi, %"class.hls::stream<ap_uint<8>, 2>"* %3
  %6 = bitcast %"class.hls::stream<ap_uint<8>, 2>"* %3 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<8>, 2>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %6, i8* %7)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<0, 100, 100, 1, 2>.13"(i8* noalias nocapture align 512 "unpacked"="0.0" %dst.01, i32* noalias nocapture align 512 "unpacked"="0.1" %dst.12, i32* noalias nocapture align 512 "unpacked"="0.2" %dst.23, i32* noalias nocapture align 512 "unpacked"="0.3" %dst.34, i8* noalias nocapture align 512 "unpacked"="0.4.0" %dst.45, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %"class.xf::cv::Mat<0, 100, 100, 1, 2>", %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %src, i64 0, i32 0
  %1 = load i8, i8* %src.0, align 1
  store i8 %1, i8* %dst.01, align 512
  %src.1 = getelementptr %"class.xf::cv::Mat<0, 100, 100, 1, 2>", %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %src, i64 0, i32 1
  %2 = load i32, i32* %src.1, align 4
  store i32 %2, i32* %dst.12, align 512
  %src.2 = getelementptr %"class.xf::cv::Mat<0, 100, 100, 1, 2>", %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %src, i64 0, i32 2
  %3 = load i32, i32* %src.2, align 4
  store i32 %3, i32* %dst.23, align 512
  %src.3 = getelementptr %"class.xf::cv::Mat<0, 100, 100, 1, 2>", %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %src, i64 0, i32 3
  %4 = load i32, i32* %src.3, align 4
  store i32 %4, i32* %dst.34, align 512
  %src.4 = getelementptr %"class.xf::cv::Mat<0, 100, 100, 1, 2>", %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %src, i64 0, i32 4
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 2>.58"(i8* align 512 %dst.45, %"class.hls::stream<ap_uint<8>, 2>"* %src.4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 2>.58"(i8* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<8>, 2>"* noalias nocapture "unpacked"="1") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<8>, 2>"
  %3 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<8>, 2>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<8>, 2>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<8>, 2>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<8>, 2>", %"class.hls::stream<ap_uint<8>, 2>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<8>, 2>" %8, 0, 0, 0, 0, 0
  store i8 %.evi, i8* %3
  call void @fpga_fifo_push_1(i8* %3, i8* %0)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_match_template_hw(i8*, i32*, i32*, i32*, i8*, i8*, i32*, i32*, i32*, i8*, i8*, i32*, i32*, i32*, i16*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias "unpacked"="0", i8* noalias nocapture readonly align 512 "unpacked"="1.0" %.0, i32* noalias nocapture readonly align 512 "unpacked"="1.1" %.1, i32* noalias nocapture readonly align 512 "unpacked"="1.2" %.2, i32* noalias nocapture readonly align 512 "unpacked"="1.3" %.3, i8* noalias nocapture align 512 "unpacked"="1.4.0" %.4, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias "unpacked"="2", i8* noalias nocapture readonly align 512 "unpacked"="3.0" %.01, i32* noalias nocapture readonly align 512 "unpacked"="3.1" %.12, i32* noalias nocapture readonly align 512 "unpacked"="3.2" %.23, i32* noalias nocapture readonly align 512 "unpacked"="3.3" %.34, i8* noalias nocapture align 512 "unpacked"="3.4.0" %.45, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* noalias "unpacked"="4", i8* noalias nocapture readonly align 512 "unpacked"="5.0" %.02, i32* noalias nocapture readonly align 512 "unpacked"="5.1" %.13, i32* noalias nocapture readonly align 512 "unpacked"="5.2" %.24, i32* noalias nocapture readonly align 512 "unpacked"="5.3" %.35, i16* noalias nocapture align 512 "unpacked"="5.4.0" %.46) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<0, 100, 100, 1, 2>"(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %0, i8* align 512 %.0, i32* align 512 %.1, i32* align 512 %.2, i32* align 512 %.3, i8* align 512 %.4)
  call fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<0, 100, 100, 1, 2>"(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %1, i8* align 512 %.01, i32* align 512 %.12, i32* align 512 %.23, i32* align 512 %.34, i8* align 512 %.45)
  call fastcc void @"onebyonecpy_hls.p0class.xf::cv::Mat<2, 91, 91, 1, 2>.22"(%"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %2, i8* align 512 %.02, i32* align 512 %.13, i32* align 512 %.24, i32* align 512 %.35, i16* align 512 %.46)
  ret void
}

declare void @match_template_hw_stub(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias nocapture nonnull, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* noalias nocapture nonnull, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* noalias nocapture nonnull)

define void @match_template_hw_stub_wrapper(i8*, i32*, i32*, i32*, i8*, i8*, i32*, i32*, i32*, i8*, i8*, i32*, i32*, i32*, i16*) #6 {
entry:
  %15 = call i8* @malloc(i64 20)
  %16 = bitcast i8* %15 to %"class.xf::cv::Mat<0, 100, 100, 1, 2>"*
  %17 = call i8* @malloc(i64 20)
  %18 = bitcast i8* %17 to %"class.xf::cv::Mat<0, 100, 100, 1, 2>"*
  %19 = call i8* @malloc(i64 20)
  %20 = bitcast i8* %19 to %"class.xf::cv::Mat<2, 91, 91, 1, 2>"*
  call void @copy_out(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %16, i8* %0, i32* %1, i32* %2, i32* %3, i8* %4, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %18, i8* %5, i32* %6, i32* %7, i32* %8, i8* %9, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %20, i8* %10, i32* %11, i32* %12, i32* %13, i16* %14)
  call void @match_template_hw_stub(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %16, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %18, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %20)
  call void @copy_in(%"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %16, i8* %0, i32* %1, i32* %2, i32* %3, i8* %4, %"class.xf::cv::Mat<0, 100, 100, 1, 2>"* %18, i8* %5, i32* %6, i32* %7, i32* %8, i8* %9, %"class.xf::cv::Mat<2, 91, 91, 1, 2>"* %20, i8* %10, i32* %11, i32* %12, i32* %13, i16* %14)
  call void @free(i8* %15)
  call void @free(i8* %17)
  call void @free(i8* %19)
  ret void
}

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="8" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="16" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
