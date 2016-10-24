#Build image:
#	docker build --no-cache='true' -t build-farm-ubuntu-latest.image:latest .
#Run container:
#	docker run -it -v /home/bezgubov/git/admin/debs/ubuntu-latest:/debs -v /mnt/aptly/incoming/ubuntu-latest:/incoming --hostname build-farm-ubuntu-latest --name build-farm-ubuntu-latest build-farm-ubuntu-latest.image:latest

FROM ubuntu:latest
MAINTAINER Anatoly Bezgubov <anatoly@bezgubov.com>

RUN apt-get update -qq && apt-get upgrade -yqq
RUN apt-get install -yqq vim tree wget curl mc python-software-properties
RUN apt-get install -yqq dh-make devscripts debhelper
RUN apt-get install -yqq libssl-dev libpcre3-dev libgeoip-dev libfreetype6

COPY src /
RUN gpg --import /tmp/sec.key
RUN rm /tmp/sec.key

ENV DEBFULLNAME Anatoly Bezgubov
ENV DEBEMAIL anatoly@bezgubov.com
