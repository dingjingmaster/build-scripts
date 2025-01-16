#!/bin/bash

sudo apt install -y \
	gperf g++-8 gcc-8 nodejs-dev \
	libclang-8-dev libglib2.0-dev libicu-dev libglib2.0-dev-bin libnss3-dev libfontconfig1-dev libx11-dev \
	'^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libevent-dev \
	libxcomposite-dev libxcursor-dev libxi-dev libxtst-dev libxkbfile-dev


sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 8
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 8
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 3
sudo update-alternatives --install /usr/bin/python2 python2 /usr/bin/python2.7 2
sudo update-alternatives --install /usr/bin/llvm-config llvm-config /usr/bin/llvm-config-8 8


export PYTHON=/usr/bin/python
../qt-everywhere-src-5.15.16/configure -v -recheck-all -prefix /opt/dev/qt-5.15.16 \
	-opensource -confirm-license -release \
	-shared \
	-c++std c++17 \
	-opengl -glib -gui -widgets \
	-icu \
	-no-ssl \
	-qpa xcb \
	-xcb-xlib \
	-qt-freetype \
	-xkbcommon \
	-feature-im \
	-feature-dialog \
	-feature-qdbus \
	-feature-translation \
	-feature-webengine-widgets \
	-feature-webengine-webchannel \
	-feature-build-qtwebengine-core

#  
# -feature-webengine-system-ffmpeg \
# -feature-webengine-system-opus \
