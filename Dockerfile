FROM ubuntu
MAINTAINER Simon Johansson <simon@simonjohansson.com>

# https://developer.mozilla.org/zh-TW/Firefox_OS/Firefox_OS_build_prerequisites#Ubuntu_13.10
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install --no-install-recommends autoconf2.13 bison bzip2 ccache curl flex gawk gcc g++ g++-multilib gcc-4.6 g++-4.6 g++-4.6-multilib git lib32ncurses5-dev lib32z1-dev zlib1g:amd64 zlib1g-dev:amd64 zlib1g:i386 zlib1g-dev:i386 libgl1-mesa-dev libx11-dev make zip libxml2-utils
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 1 
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 2 
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.6 1 
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 2 
RUN update-alternatives --set gcc "/usr/bin/gcc-4.6" 
RUN update-alternatives --set g++ "/usr/bin/g++-4.6"
