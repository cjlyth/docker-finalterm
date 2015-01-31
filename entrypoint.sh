#!/bin/bash
set -e

# Need to fix the make script

#  && mkdir -p build \
#  && cd build \
#  && cmake .. \
#  && make \
#  && make install
# CMAKE_INSTALL_PREFIX
# RUN cd /usr/src/go/src && ./make.bash --no-clean 2>&1

# ENV PATH /usr/src/go/bin:$PATH

# RUN mkdir -p /go/src
# ENV GOPATH /go
# ENV PATH /go/bin:$PATH
# WORKDIR /go

# COPY docker-build-entrypoint.sh /usr/local/bin/



exec "${@}"