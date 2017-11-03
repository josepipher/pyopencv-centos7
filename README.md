------------------------
Python OpenCV on Centos7
------------------------
# Run the container
docker run -it sanjose/pyopencv-centos7 bash

On the container, run python:
```python
>>> import cv2
>>> cv2.__version__
```
It should give version '3.1.0'
