FROM debian

RUN apt-get update -y -qq

RUN apt-get install -y -qq --no-install-recommends \
    golang graphviz

ENV APP callviz

RUN mkdir -p /$APP

RUN git clone https://github.com/xenogenesi/vbox-buildroot-vagrant.git /$APP make

WORKDIR /$APP
