# 基于 pySLAM 的视觉里程计复现与实验分析

## 1. 项目简介

本仓库为《机器人控制技术》课程大作业提交材料，主要复现开源项目 pySLAM 中的视觉里程计（Visual Odometry）示例程序。

原始项目地址：

https://github.com/luigifreda/pyslam

本实验主要运行 `main_vo.py`，使用示例视频数据进行视觉里程计测试，观察连续图像帧中的特征点检测、跟踪匹配和相机运动估计过程。

## 2. 实验环境

- Windows + WSL/Ubuntu
- Python 3.11.9
- pySLAM 虚拟环境
- OpenCV
- g2o / g2opy
- gtsam
- SuiteSparse / CHOLMOD
- pybind11

## 3. 运行方法

进入 pySLAM 原始项目目录后执行：

```bash
cd ~/robot_hw/pyslam
. pyenv-activate.sh

export PYTHONPATH=$PWD/thirdparty/g2opy:$PWD/cpp/lib:$PWD:$PWD/pyslam:$PYTHONPATH
export LD_LIBRARY_PATH=$PWD/cpp/lib:$LD_LIBRARY_PATH

./main_vo.py
```

也可以使用本仓库中的脚本：

```bash
bash scripts/run_pyslam_vo.sh
```

## 4. 实验结果

程序成功启动视觉里程计示例，并逐帧处理视频数据。运行过程中终端输出当前帧号、匹配点数量、内点数量、特征检测器和跟踪器等信息。

运行结果显示程序处理到数据集末尾，并输出 `Dataset end`，说明视觉里程计示例能够完整运行。

## 5. 文件说明

```text
README.md                  项目说明
scripts/run_pyslam_vo.sh   运行脚本
run_main_vo_log.txt        运行日志
report.pdf                 大作业报告
demo_video.mp4             演示视频
screenshots/               运行截图
```

## 6. 复现过程中遇到的问题

| 问题 | 原因 | 解决方法 |
|---|---|---|
| apt 下载速度慢 | 默认 Ubuntu 源速度慢 | 替换为清华镜像源 |
| 缺少 OpenCV 头文件 | 未安装 OpenCV 开发库 | 安装 `libopencv-dev` |
| 缺少 pybind11 | g2opy 编译需要 C++/Python 绑定头文件 | 安装 `pybind11-dev` |
| 缺少 CHOLMOD | g2o 优化库依赖 SuiteSparse | 安装 `libsuitesparse-dev` |
| 缺少 g2o/gtsam | Python fallback 依赖不完整 | 编译 g2opy 并安装 gtsam |

## 7. 参考资料

- pySLAM: https://github.com/luigifreda/pyslam
- OpenCV: https://opencv.org/
- g2o: https://github.com/RainerKuemmerle/g2o
- GTSAM: https://gtsam.org/
```
