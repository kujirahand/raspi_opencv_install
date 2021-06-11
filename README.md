# ラズパイにOpenCV4.1をインストールする手順

ラズパイのターミナルで以下のコマンドを実行します。

```
$ git clone https://github.com/kujirahand/raspi_opencv_install.git
$ bash raspi_opencv_install/4.1/setup.sh
```

あるいは、本リポジトリのスクリプトを使わず、以下のコマンドを実行します。

```
$ sudo apt update
$ sudo apt upgrade

$ sudo apt install libqt4-test libqtgui4 libjasper1 libatlas-base-dev libhdf5-dev

$ sudo pip3 install opencv-python==4.1.0.25
$ sudo pip3 install opencv-contrib-python==4.1.0.25
```



# OpenCV 3.1 をインストールしたい場合

ラズパイ(Raspbian Jessie)のターミナルで以下のコマンドを実行します。

```
$ git clone https://github.com/kujirahand/raspi_opencv_install.git
$ bash raspi_opencv_install/3.1/setup.sh
```


# 手動で行う場合

上記の方法で実行できなければ、以下を実行します。

```
$ sudo apt-get update
$ sudo apt-get upgrade
```

## ライブラリのインストール

```
sudo apt-get install -y cmake python3-dev python3.6-dev python3-numpy gcc gcc-c++ build-essential cmake-curses-gui

sudo apt-get install -y pkg-config libpng12-0 libpng12-dev libpng++-dev libpng3 libpnglite-dev zlib1g-dbg zlib1g zlib1g-dev pngtools libtiff5-dev libtiff4 libtiffxx0c2 libtiff-tools libeigen3-dev

sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libgtk2.0-dev libatlas-base-dev gfortran wget
```

### OpenCVのダウンロード

```
cd ~/
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.1.0.zip
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.1.0.zip
unzip opencv.zip
unzip opencv_contrib.zip
```

### ビルド

```
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
```

