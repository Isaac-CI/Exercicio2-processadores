# Instalação dos prerequisitos
## Tabela de Conteúdos 
- [Instalação dos prerequisitos](#instalação-dos-prerequisitos)
  - [Tabela de Conteúdos](#tabela-de-conteúdos)
  - [Detalhes do sistema](#detalhes-do-sistema)
  - [Vitis 2024.2](#vitis-20242)
    - [Instalação](#instalação)
    - [Troubleshoot](#troubleshoot)
      - [Não é possível abrir o GUI do vitis](#não-é-possível-abrir-o-gui-do-vitis)
  - [OpenCV 4.4.0 x86](#opencv-440-x86)
    - [Instalação](#instalação-1)
  - [Vitis Vision](#vitis-vision)
    - [Instalação](#instalação-2)

## Detalhes do sistema
- WSL2 com distro Ubuntu 22.04.5 LTS
## Vitis 2024.2
### Instalação
1. Baixar o [AMD Unified Installer for FPGAs & Adaptive SoCs 2024.2: Linux Self Extracting Web Installer](https://www.xilinx.com/support/download.html) no WSL
2. Executar o como superuser installer:
   ```
    $ sudo su
    # cd <path_to_installer>
    # chmod +x FPGAs_AdaptiveSoCs_Unified_2024.2_1113_1001_Lin64.bin  
    # ./FPGAs_AdaptiveSoCs_Unified_2024.2_1113_1001_Lin64.bin
   ```
3. Seguir o passo a passo do wizard de instalação:
   1. Faça o login na sua conta da AMD e selecione a opção `Download and Intall Now` ![imagem da etapa de login da instalação](/docs/images/login.png)
   2. Selecione o vitis como produto a ser instalado ![imagem da etapa de seleção da instalação](/docs/images/select.png)
   3. Customise sua instalação com as ferramentas necessárias. Pelo menos um device deve ser selecionado. ![imagem da etapa de seleção das ferramentas](/docs/images/tools.png)
   4. Aceite todos os termos e condições requeridos ![imagem da etapa de aceite dos termos e condições](/docs/images/terms.png)
   5. Defina o caminho de instalação ![imagem da etapa de definição do caminho de instalação](/docs/images/path.png)
   6. Revise as informações de instalação, clique em install e espere a instalação terminar. ![imagem da etapa de definição do caminho de instalação](/docs/images/info.png)
4. Instale as bibliotecas necessárias pelo script `installLibs.sh`
   ```
   $ cd <path_to_vitis_2024.2>/scripts
   $ ./installLibs.sh
   ```
5. Adicione as seguintes linhas ao final do `~/.bashrc`
   ```
    export DISPLAY=:0
    source /tools/Xilinx/Vitis/2024.2/settings64.sh
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
   ```

### Troubleshoot
#### Não é possível abrir o GUI do vitis
resolvido ao instalar:
```
$ sudo apt install mesa-utils libwebkit2gtk-4.0-37 libwebkit2gtk-4.1-0
```

## OpenCV 4.4.0 x86
### Instalação
1. Crie um diretório chamado source e clone [opencv-4.4.0](https://github.com/opencv/opencv.git) nele
   ```
   $ cd <path_to_source_parent_folder>
   $ mkdir source
   $ cd source
   $ git clone https://github.com/opencv/opencv.git opencv-4.4.0
   $ cd opencv-4.4.0
   $ git checkout 4.4.0
   ```
2. Crie um diretório chamado source_contrib e clone opencv-4.4.0-contrib nele
   ```
   $ cd <path_to_source_parent_folder>
   $ mkdir source_contrib
   $ cd cource_contrib
   $ git clone https://github.com/opencv/opencv_contrib.git opencv-4.4.0-contrib
   $ cd opencv-4.4.0
   $ git checkout 4.4.0
   ```
3. Crie dois diretórios, `build` e `install` dentro de opencv-4.4.0, e acesse o diretório `build`
   ```
   $ cd <path_to_opencv-4.4.0>
   $ mkdir build
   $ mkdir install
   $ cd build
   ```
4. Exporte um novo valor para `$LIBRARY_PATH`
   ```
   $ export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/
   ```
5. Configure a compilação e instalação do `OpenCV`. Lembre-se de usar a versão 8.3.0 do gcc, por questões de compatibilidade no linker
   ```
   $ cmake .. -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=<path_to_install_folder> \
    -D CMAKE_CXX_COMPILER=<path_to_vitis_2024.2>/tps/lnx64/gcc-8.3.0/bin/g++ \
    -D OPENCV_EXTRA_MODULES_PATH=<path_to_opencv-4.4.0-contrib>/opencv-4.4.0-contrib/modules/ \
    -D WITH_V4L=ON \
    -DBUILD_TESTS=OFF \
    -DBUILD_ZLIB=ON \
    -DBUILD_JPEG=ON \
    -DWITH_JPEG=ON \
    -DWITH_PNG=ON \
    -DBUILD_EXAMPLES=OFF \
    -DINSTALL_C_EXAMPLES=OFF \
    -DINSTALL_PYTHON_EXAMPLES=OFF \
    -DWITH_OPENEXR=OFF \
    -DBUILD_OPENEXR=OFF \
    -DBUILD_opencv_xobjdetect=OFF \
    -DPYTHON_EXECUTABLE=/usr/bin/python3
   ```
6. Compile e instale o `OpenCV`
   ```
   $ make all -j$(nproc)
   $ make install
   ```
## Vitis Vision
### Instalação
1. Clone o repositório [Vitis_Libraries](https://github.com/Xilinx/Vitis_Libraries.git) dentro do diretório de instalação do Vitis
   ```
   $ cd <path_to_Vitis_2024.2>
   $ sudo git clone https://github.com/Xilinx/Vitis_Libraries.git
   ```