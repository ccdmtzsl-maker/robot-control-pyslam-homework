#!/bin/bash

# Main dependency installation commands used in this reproduction.
# This script is for reference only.

sudo apt update

sudo apt install -y \
    cmake \
    build-essential \
    libeigen3-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    freeglut3-dev \
    mesa-common-dev \
    libglew-dev \
    libtbb-dev \
    libqhull-dev \
    libopencv-dev \
    pkg-config \
    pybind11-dev \
    libsuitesparse-dev \
    python3-dev

# Python packages installed in pySLAM virtual environment:
# pip install pybind11
# pip install gtsam
