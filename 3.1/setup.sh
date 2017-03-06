#!/bin/sh
# ---
# Raspberry Pi (Jessie) に
#   OpenCV 3.1.0をインストールする
# ---
sudo apt-get update

# 必要なライブラリをインストール
sudo apt-get install -y cmake python3-dev python3.2-dev python3-numpy gcc build-essential cmake-curses-gui

sudo apt-get install -y pkg-config libpng12-0 libpng12-dev libpng++-dev libpng3 libpnglite-dev zlib1g-dbg zlib1g zlib1g-dev pngtools libtiff5-dev libtiff4 libtiffxx0c2 libtiff-tools libeigen3-dev

sudo apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libgtk2.0-dev libatlas-base-dev gfortran wget

# 必要なZIPファイルをダウンロード
cd ~/

wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.1.0.zip
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.1.0.zip
# ZIPを解凍
unzip opencv.zip
unzip opencv_contrib.zip

# ビルド
cd ~/opencv-3.1.0/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.1.0/modules \
    -D BUILD_EXAMPLES=ON ..

make -j4
sudo make install
sudo ldconfig



