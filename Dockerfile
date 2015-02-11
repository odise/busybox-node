FROM odise/busybox-curl:2015.02

MAINTAINER Jan NAbbefeld <jan@odise.de>

ADD libstdc++.so.6.tar.gz /
RUN \
  curl -s http://nodejs.org/dist/v0.12.0/node-v0.12.0-linux-x64.tar.gz | gunzip | tar -xf - -C /

ENV PATH /node-v0.12.0-linux-x64/bin:$PATH

CMD ["/bin/bash"]
