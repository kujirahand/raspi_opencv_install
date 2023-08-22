#!/bin/sh

echo "--- update ---"
sudo apt update
sudo apt upgrade

echo "--- apt install library ---"
sudo apt install -y \
  libjasper1 libatlas-base-dev libhdf5-dev

echo "--- pip3 install opencv-python ---"
pip3 install --upgrade pip
pip3 install -U opencv-python==4.1.0.25
pip3 install -U opencv-contrib-python==4.1.0.25




