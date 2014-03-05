# Docker container for building virtual machine images with Packer

FROM       ubuntu
MAINTAINER Chris Corbyn <chris@w3style.co.uk>

ADD https://dl.bintray.com/mitchellh/packer/0.5.2_linux_amd64.zip \
    /usr/local/bin/packer.zip

RUN apt-get install -qq -y unzip
RUN cd /usr/local/bin; unzip -q packer.zip; rm packer.zip
