FROM alpine:3.8

RUN apk update && apk add \
git \
vim \
wget \
gdb \
gcc \
make \
autoconf && export TERM=xterm \
&& rm -rf /var/lib/apt/lists/* /tmp/*
RUN git clone https://github.com/torvalds/linux.git
WORKDIR linux

ENTRYPOINT tail -f /dev/null
