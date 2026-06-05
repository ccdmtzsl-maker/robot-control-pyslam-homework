# Configuration Notes

During reproduction, the following pySLAM configuration was adjusted.

The project contains two configuration files related to `USE_CPP_CORE`:

```text
config_parameters.py
pyslam/config_parameters.py
```

To avoid missing `cpp_core` import errors and use the Python fallback route, both files were set to:

```python
USE_CPP_CORE = _use_cpp_core_from_env(default=False)
```

The following environment variables were also used before running `main_vo.py`:

```bash
export PYTHONPATH=$PWD/thirdparty/g2opy:$PWD/cpp/lib:$PWD:$PWD/pyslam:$PYTHONPATH
export LD_LIBRARY_PATH=$PWD/cpp/lib:$LD_LIBRARY_PATH
```
