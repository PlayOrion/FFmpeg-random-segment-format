#!/bin/bash
DIR=$(dirname $0)
mkdir -p $DIR/build
PREFIX=$DIR/build
./configure --extra-version=static --prefix=$PREFIX --libdir=$PREFIX/lib --shlibdir=$PREFIX/lib --mandir=$PREFIX/share/man --disable-shared --enable-static \
--optflags='-O2 -march=native -pipe -static' --extra-cflags='-O2 -march=native -pipe -static' --extra-cxxflags='-O2 -march=native -pipe -static' \
--enable-gpl --enable-postproc --enable-avfilter --enable-avresample --disable-stripping --enable-version3 --enable-nonfree --enable-indev=v4l2 --enable-outdev=v4l2 --enable-indev=alsa --disable-indev=oss \
--disable-indev=jack --enable-outdev=alsa --disable-outdev=oss --disable-outdev=sdl --enable-version3 --enable-bzlib --disable-runtime-cpudetect --disable-debug --disable-doc --disable-gnutls --enable-hardcoded-tables \
--enable-iconv --enable-network --disable-openssl --enable-ffplay --enable-ffserver --enable-vaapi --enable-vdpau --enable-zlib --enable-libvo-aacenc --disable-libvo-amrwbenc --enable-libmp3lame --disable-libaacplus --enable-libfaac \
--enable-libtheora --disable-libtwolame --disable-libwavpack --disable-libwebp --enable-libx264 --disable-libx265 --enable-libxvid --disable-libcdio --disable-libiec61883 --disable-libdc1394 --disable-libcaca --enable-openal \
--enable-opengl --enable-libv4l2 --disable-libpulse --enable-x11grab --disable-libflite --disable-frei0r --disable-fontconfig --disable-ladspa --disable-libass --disable-libfreetype --disable-libsoxr --enable-pthreads \
--enable-libopencore-amrwb --enable-libopencore-amrnb --disable-libfdk-aac --disable-libopenjpeg --disable-libbluray --disable-libcelt --disable-libgme --disable-libgsm --disable-libmodplug --enable-libopus --disable-libquvi \
--enable-librtmp --disable-libssh --disable-libschroedinger --enable-libspeex --enable-libvorbis --enable-libvpx --disable-libzvbi --disable-armv5te --disable-armv6 --disable-armv6t2 --disable-neon --disable-vfp --disable-mips32r2 \
--disable-mipsdspr1 --disable-mipsdspr2 --disable-mipsfpu --disable-altivec --disable-avx --disable-avx2 --enable-pic --disable-asm --cpu=host