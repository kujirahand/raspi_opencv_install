#!/bin/sh

sudo apt update
sudo apt upgrade

sudo apt install -y libqt4-test libqtgui4 libjasper1 libatlas-base-dev libhdf5-dev

sudo pip3 install opencv-python==4.1.0.25
sudo pip3 install opencv-contrib-python==4.1.0.25



