# ラズパイに OpenCV 4.1をインストール

ラズパイのターミナルで以下のコマンドを実行します。

```
$ git clone https://github.com/kujirahand/raspi_opencv_install.git
$ bash raspi_opencv_install/setup.sh
```

あるいは、本リポジトリのスクリプトを使わず、以下のコマンドを実行します。

```
$ sudo apt update
$ sudo apt upgrade

$ sudo apt install libqt4-test libqtgui4 libjasper1 libatlas-base-dev libhdf5-dev

$ sudo pip3 install opencv-python==4.1.0.25
$ sudo pip3 install opencv-contrib-python==4.1.0.25
```
