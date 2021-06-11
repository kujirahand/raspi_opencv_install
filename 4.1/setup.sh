#!/bin/sh

echo "--- update ---"
sudo apt update
sudo apt upgrade

echo "--- apt install library ---"
sudo apt install -y libqt4-test libqtgui4 libjasper1 libatlas-base-dev libhdf5-dev

echo "--- pip3 install opencv-python ---"
sudo pip3 install opencv-python==4.1.0.25
sudo pip3 install opencv-contrib-python==4.1.0.25



