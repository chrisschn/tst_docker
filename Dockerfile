FROM ubuntu:14.04


RUN apt-get -y update
RUN apt-get install -y cmake libboost-all-dev build-essential qt4-dev-tools libopencv-dev
RUN apt-get install -y software-properties-common python-software-properties

RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt-get update -y

RUN apt-get install -y gcc-4.9
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 50
RUN apt-get -y install g++-4.9
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 50


RUN echo 'root:root' |chpasswd
