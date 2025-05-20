// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmatch_template.h"

extern XMatch_template_Config XMatch_template_ConfigTable[];

#ifdef SDT
XMatch_template_Config *XMatch_template_LookupConfig(UINTPTR BaseAddress) {
	XMatch_template_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMatch_template_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMatch_template_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMatch_template_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatch_template_Initialize(XMatch_template *InstancePtr, UINTPTR BaseAddress) {
	XMatch_template_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatch_template_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatch_template_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMatch_template_Config *XMatch_template_LookupConfig(u16 DeviceId) {
	XMatch_template_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMATCH_TEMPLATE_NUM_INSTANCES; Index++) {
		if (XMatch_template_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMatch_template_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMatch_template_Initialize(XMatch_template *InstancePtr, u16 DeviceId) {
	XMatch_template_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMatch_template_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMatch_template_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

