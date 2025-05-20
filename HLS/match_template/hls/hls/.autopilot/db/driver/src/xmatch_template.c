// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmatch_template.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMatch_template_CfgInitialize(XMatch_template *InstancePtr, XMatch_template_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMatch_template_Start(XMatch_template *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatch_template_ReadReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMatch_template_WriteReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMatch_template_IsDone(XMatch_template *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatch_template_ReadReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMatch_template_IsIdle(XMatch_template *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatch_template_ReadReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMatch_template_IsReady(XMatch_template *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMatch_template_ReadReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMatch_template_EnableAutoRestart(XMatch_template *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatch_template_WriteReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMatch_template_DisableAutoRestart(XMatch_template *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatch_template_WriteReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_AP_CTRL, 0);
}

void XMatch_template_InterruptGlobalEnable(XMatch_template *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatch_template_WriteReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_GIE, 1);
}

void XMatch_template_InterruptGlobalDisable(XMatch_template *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatch_template_WriteReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_GIE, 0);
}

void XMatch_template_InterruptEnable(XMatch_template *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatch_template_ReadReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_IER);
    XMatch_template_WriteReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_IER, Register | Mask);
}

void XMatch_template_InterruptDisable(XMatch_template *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMatch_template_ReadReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_IER);
    XMatch_template_WriteReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMatch_template_InterruptClear(XMatch_template *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMatch_template_WriteReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_ISR, Mask);
}

u32 XMatch_template_InterruptGetEnabled(XMatch_template *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatch_template_ReadReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_IER);
}

u32 XMatch_template_InterruptGetStatus(XMatch_template *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMatch_template_ReadReg(InstancePtr->Control_BaseAddress, XMATCH_TEMPLATE_CONTROL_ADDR_ISR);
}

