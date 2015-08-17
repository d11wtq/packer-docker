FROM       gliderlabs/alpine:latest
MAINTAINER Chris Corbyn <chris@w3style.co.uk>

ENV PACKER_ZIP   packer_0.8.5_linux_amd64.zip
ENV PACKER_URL   http://dl.bintray.com/mitchellh/packer/$PACKER_ZIP

RUN apk --update add ca-certificates

RUN cd /tmp;                       \
    wget $PACKER_URL;              \
    unzip -d /usr/bin $PACKER_ZIP; \
    rm $PACKER_ZIP
