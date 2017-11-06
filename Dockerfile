FROM sanjose/centos7
MAINTAINER sanjose

RUN cd ~ \
	&& yum install epel-release -y \
	&& yum update -y \
	&& yum groupinstall 'Development Tools' -y \
	&& yum install -y cmake git pkgconfig libpng-devel libjpeg-turbo-devel jasper-devel openexr-devel libtiff-devel libwebp-devel libdc1394-devel libv4l-devel gstreamer-plugins-base-devel gtk2-devel tbb-devel eigen3-devel \
	&& curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" \
	&& python get-pip.py \
	&& pip install virtualenv virtualenvwrapper \
	&& rm -rf ~/.cache/pip \
	&& export WORKON_HOME=$HOME/.virtualenvs \
	&& source /usr/bin/virtualenvwrapper.sh \
	&& source ~/.bashrc \
	&& mkvirtualenv cv \
	&& yum install python-devel -y \
	&& pip install numpy \
	&& git clone https://github.com/Itseez/opencv.git \
	&& cd opencv/ \
	&& git checkout 3.1.0 \
	&& cd ~ && git clone https://github.com/Itseez/opencv_contrib.git \
	&& cd opencv_contrib/ \
	&& git checkout 3.1.0 \
	&& cd ~/opencv \
	&& mkdir build && cd build/ \
	&& cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules -D INSTALL_C_EXAMPLES=OFF -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D BUILD_OPENCV_PYTHON2=ON .. \
	&& make && make install && ldconfig \
	&& ls /usr/local/lib/python2.7/site-packages \
	&& cd ~/.virtualenvs/cv/lib/python2.7/site-packages/ \
	&& ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so \
	&& yum clean all \
	&& rm -rf /var/cache/yum \
	&& export WORKON_HOME=$HOME/.virtualenvs \
	&& source /usr/bin/virtualenvwrapper.sh \
	&& source ~/.bashrc \
	&& work on cv
