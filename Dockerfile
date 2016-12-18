FROM jrottenberg/ffmpeg:3

RUN apt-get update
RUN apt-get install -y gnuradio gr-osmosdr libhackrf-dev libuhd-dev
RUN apt-get install -y git cmake build-essential libboost-all-dev libusb-1.0-0.dev libssl-dev
