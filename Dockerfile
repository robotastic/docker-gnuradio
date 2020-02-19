FROM ubuntu:18.04 AS base

RUN apt-get update
RUN apt-get install -y gnuradio gr-osmosdr libhackrf-dev libuhd-dev
RUN apt-get install -y git cmake build-essential libboost-all-dev libusb-1.0-0.dev libssl-dev
RUN apt-get install -y ca-certificates expat libgomp1 fdkaac sox
# install necessary locales
RUN apt-get install -y locales \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen

RUN apt-get autoremove -y && \
    apt-get clean -y
