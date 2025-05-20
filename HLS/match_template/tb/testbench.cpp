#include "../src/match_template.hpp"
#include "common/xf_headers.hpp"
#include <cmath>
#include <limits>

#define INPUT_IMG  "/home/aanout/Documents/mestrado/exercicio_2/HLS/match_template/images/input.jpg"
#define TEMPLATE_IMG "/home/aanout/Documents/mestrado/exercicio_2/HLS/match_template/images/template.jpg"

int main() {
    // Carrega imagens com OpenCV
    cv::Mat img = cv::imread(INPUT_IMG, cv::IMREAD_GRAYSCALE);
    cv::Mat tmpl = cv::imread(TEMPLATE_IMG, cv::IMREAD_GRAYSCALE);

    if (img.empty() || tmpl.empty()) {
        std::cerr << "Erro ao carregar imagens!" << std::endl;
        return -1;
    }

    // Redimensiona imagens para os tamanhos fixos
    // cv::resize(img, img, cv::Size(INPUT_WIDTH, INPUT_HEIGHT));
    // cv::resize(tmpl, tmpl, cv::Size(TEMPLATE_WIDTH, TEMPLATE_HEIGHT));

    // Cria objetos xf::cv::Mat
    xf::cv::Mat<INPUT_TYPE, INPUT_HEIGHT, INPUT_WIDTH, NPC1> img_in(img.rows, img.cols);
    xf::cv::Mat<INPUT_TYPE, TEMPLATE_HEIGHT, TEMPLATE_WIDTH, NPC1> img_template(tmpl.rows, tmpl.cols);
    xf::cv::Mat<OUTPUT_TYPE, RESULT_HEIGHT, RESULT_WIDTH, NPC1> img_out(RESULT_HEIGHT, RESULT_WIDTH);

    // Copia dados
    img_in.copyTo(img.data);
    img_template.copyTo(tmpl.data);

    // Executa a função de template matching
    match_template(img_in, img_template, img_out);

    // Converte resultado para cv::Mat
    cv::Mat result(RESULT_HEIGHT, RESULT_WIDTH, CV_16UC1);
    result.data = img_out.copyFrom();

    // Encontra a posição de melhor match (mínimo valor)
    int min_x = 0, min_y = 0;
    uint16_t min_val = std::numeric_limits<uint16_t>::max();

    for (int x = 0; x < RESULT_WIDTH; ++x) {
        for (int y = 0; y < RESULT_HEIGHT; ++y) {
            uint16_t val = result.at<uint16_t>(y, x);
            if (val < min_val) {
                min_val = val;
                min_x = x;
                min_y = y;
            }
        }
    }

    std::cout << "Melhor correspondência em: (" << min_x << ", " << min_y << ") com valor " << min_val << std::endl;

    // Converte imagem original para BGR para desenhar em cor
    cv::Mat img_bgr;
    cv::cvtColor(img, img_bgr, cv::COLOR_GRAY2BGR);

    // Desenha retângulo na melhor correspondência
    cv::rectangle(img_bgr,
                  cv::Point(min_x, min_y),
                  cv::Point(min_x + TEMPLATE_WIDTH, min_y + TEMPLATE_HEIGHT),
                  cv::Scalar(0, 0, 255), 2);

    // Salva imagem com marcação
    cv::imwrite("output_marked.png", img_bgr);
    std::cout << "Imagem anotada salva como output_marked.png" << std::endl;

    // (Opcional) salva também a imagem normalizada do resultado
    cv::Mat result_norm;
    cv::normalize(result, result_norm, 0, 255, cv::NORM_MINMAX);
    result_norm.convertTo(result_norm, CV_8UC1);
    cv::imwrite("output_result.png", result_norm);

    return 0;
}