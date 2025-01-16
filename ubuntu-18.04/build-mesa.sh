#!/bin/bash

#
meson setup ./build --prefix /opt/dev/mesa-20.0.8/ \
	-Dplatforms=x11,wayland,surfaceless \
	-Dgallium-drivers=swrast,radeonsi,nouveau,iris \
	-Dvulkan-drivers=intel,amd \
	-Dgles1=true \
	-Dgles2=true \
	-Degl=true \
	-Dopengl=true \
	-Ddri3=true

