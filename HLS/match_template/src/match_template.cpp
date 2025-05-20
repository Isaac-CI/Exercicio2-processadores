#include "match_template.hpp"

void match_template(xf::cv::Mat<INPUT_TYPE, INPUT_HEIGHT, INPUT_WIDTH, NPC1> &img_in,
                    xf::cv::Mat<INPUT_TYPE, TEMPLATE_HEIGHT, TEMPLATE_WIDTH, NPC1> &img_template,
                    xf::cv::Mat<OUTPUT_TYPE, RESULT_HEIGHT, RESULT_WIDTH, NPC1> &img_out) {
#pragma HLS INTERFACE m_axi port=img_in       offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=img_template offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi port=img_out      offset=slave bundle=gmem
#pragma HLS INTERFACE s_axilite port=return   bundle=control

    const int norm_factor = TEMPLATE_HEIGHT * TEMPLATE_WIDTH;

    row_loop: for (int y = 0; y < RESULT_HEIGHT; y++) {
        col_loop: for (int x = 0; x < RESULT_WIDTH; x++) {
#pragma HLS PIPELINE II=1

            unsigned int rsum = 0;

            tpl_row_loop: for (int j = 0; j < TEMPLATE_HEIGHT; j++) {
                tpl_col_loop: for (int i = 0; i < TEMPLATE_WIDTH; i++) {
                    int img_idx = (x + i) + ((y + j) * INPUT_WIDTH);
                    int tpl_idx = i + (j * TEMPLATE_WIDTH);

                    ap_uint<8> I = img_in.read(img_idx);
                    ap_uint<8> T = img_template.read(tpl_idx);

                    int diff = (int)T - (int)I;
                    rsum += diff * diff;
                }
            }

            // Resultado normalizado e escrito como 16 bits
            ap_uint<16> result = rsum / norm_factor;
            img_out.write(x + y * RESULT_WIDTH, result);
        }
    }
}
