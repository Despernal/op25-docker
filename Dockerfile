FROM debian:bullseye
ENV DEBIAN_FRONTEND=noninteractive
ARG TZ=America/Chicago
RUN cd /
RUN export DEBIAN_FRONTEND=noninteractive && \
    export TZ=$TZ && \
    apt-get update && apt-get install -y tzdata && \
    dpkg-reconfigure --frontend noninteractive tzdata
RUN apt-get update && apt-get install -y git gnuradio gnuradio-dev gr-osmosdr \
    librtlsdr-dev libuhd-dev libhackrf-dev libitpp-dev libpcap-dev cmake \
    swig build-essential pkg-config doxygen python3-numpy \
    gnuplot-x11 python3-waitress python3-requests
RUN git clone git://git.osmocom.org/op25 && cd /op25 && mkdir build \
    && cd build && cmake ../ && make && make install && ldconfig
COPY ./config/ /op25/op25/gr-op25_repeater/apps/
COPY ./rx.sh /rx.sh
