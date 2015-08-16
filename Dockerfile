FROM       progrium/busybox:latest
MAINTAINER Chris Corbyn <chris@w3style.co.uk>

ENV PACKER_ZIP   packer_0.8.5_linux_amd64.zip
ENV PACKER_URL   http://dl.bintray.com/mitchellh/packer/$PACKER_ZIP

RUN opkg-install ca-certificates

RUN cat /etc/ssl/certs/*.crt \
      > /etc/ssl/certs/ca-certificates.crt

RUN cd /tmp;                       \
    wget $PACKER_URL;              \
    unzip -d /usr/bin $PACKER_ZIP; \
    rm $PACKER_ZIP
