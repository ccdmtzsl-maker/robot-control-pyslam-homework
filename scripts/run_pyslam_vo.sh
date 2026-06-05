#!/bin/bash

cd ~/robot_hw/pyslam
. pyenv-activate.sh

export PYTHONPATH=$PWD/thirdparty/g2opy:$PWD/cpp/lib:$PWD:$PWD/pyslam:$PYTHONPATH
export LD_LIBRARY_PATH=$PWD/cpp/lib:$LD_LIBRARY_PATH

./main_vo.py
