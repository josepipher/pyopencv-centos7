------------------------
Python OpenCV on Centos7
------------------------
# Run the container
```docker
docker run -it sanjose/pyopencv-centos7 bash
```

On the container, run python:
```python
>>> import cv2
>>> cv2.__version__
```
It should give version '3.1.0'

# Reference:
[Install OpenCV 3.1 and Python 2.7 on CentOS 7](https://computervisiononline.com/blog/install-opencv-31-and-python-27-centos-7)
