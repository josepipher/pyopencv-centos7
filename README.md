------------------------
Python OpenCV on Centos7
------------------------
## Run the container
```docker
docker run -it sanjose/pyopencv-centos7 bash
```

To enable virtualenv on this docker container:
```linux
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
source ~/.bashrc
```

To enable virtualenv, e.g. cv in this example
```linux
mkvirtualenv cv
workon cv
```

To deactivate virtualenv
```linux
deactivate
```

On the container, run python:
```python
>>> import cv2
>>> cv2.__version__
```
It should give version '3.1.0'

## Reference:
[Install OpenCV 3.1 and Python 2.7 on CentOS 7](https://computervisiononline.com/blog/install-opencv-31-and-python-27-centos-7)
