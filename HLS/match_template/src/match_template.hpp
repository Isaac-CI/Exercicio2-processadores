#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_stream.h"
#include "common/xf_common.hpp"
#include "common/xf_utility.hpp"
#include "common/xf_params.hpp"
#include "xf_config_params.h"

// Parâmetros de template da imagem
#define INPUT_HEIGHT 100
#define INPUT_WIDTH 100
#define TEMPLATE_HEIGHT 10
#define TEMPLATE_WIDTH 10
#define RESULT_HEIGHT (INPUT_HEIGHT - TEMPLATE_HEIGHT + 1)
#define RESULT_WIDTH (INPUT_WIDTH - TEMPLATE_WIDTH + 1)

#define NPC1 XF_NPPC1
#define INPUT_TYPE XF_8UC1
#define OUTPUT_TYPE XF_16UC1  // 16-bit unsigned para saída (em vez de float)

void match_template(xf::cv::Mat<INPUT_TYPE, INPUT_HEIGHT, INPUT_WIDTH, NPC1> &img_in,
                    xf::cv::Mat<INPUT_TYPE, TEMPLATE_HEIGHT, TEMPLATE_WIDTH, NPC1> &img_template,
                    xf::cv::Mat<OUTPUT_TYPE, RESULT_HEIGHT, RESULT_WIDTH, NPC1> &img_out);