// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMATCH_TEMPLATE_H
#define XMATCH_TEMPLATE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmatch_template_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMatch_template_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMatch_template;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMatch_template_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMatch_template_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMatch_template_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMatch_template_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XMatch_template_Initialize(XMatch_template *InstancePtr, UINTPTR BaseAddress);
XMatch_template_Config* XMatch_template_LookupConfig(UINTPTR BaseAddress);
#else
int XMatch_template_Initialize(XMatch_template *InstancePtr, u16 DeviceId);
XMatch_template_Config* XMatch_template_LookupConfig(u16 DeviceId);
#endif
int XMatch_template_CfgInitialize(XMatch_template *InstancePtr, XMatch_template_Config *ConfigPtr);
#else
int XMatch_template_Initialize(XMatch_template *InstancePtr, const char* InstanceName);
int XMatch_template_Release(XMatch_template *InstancePtr);
#endif

void XMatch_template_Start(XMatch_template *InstancePtr);
u32 XMatch_template_IsDone(XMatch_template *InstancePtr);
u32 XMatch_template_IsIdle(XMatch_template *InstancePtr);
u32 XMatch_template_IsReady(XMatch_template *InstancePtr);
void XMatch_template_EnableAutoRestart(XMatch_template *InstancePtr);
void XMatch_template_DisableAutoRestart(XMatch_template *InstancePtr);


void XMatch_template_InterruptGlobalEnable(XMatch_template *InstancePtr);
void XMatch_template_InterruptGlobalDisable(XMatch_template *InstancePtr);
void XMatch_template_InterruptEnable(XMatch_template *InstancePtr, u32 Mask);
void XMatch_template_InterruptDisable(XMatch_template *InstancePtr, u32 Mask);
void XMatch_template_InterruptClear(XMatch_template *InstancePtr, u32 Mask);
u32 XMatch_template_InterruptGetEnabled(XMatch_template *InstancePtr);
u32 XMatch_template_InterruptGetStatus(XMatch_template *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
