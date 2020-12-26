# Dcokerfile / ProjectEuler
## usage:
##   docker build -t  ProjectEuler .
##   docker run   -it ProjectEuler /bin/bash
FROM ubuntu:20.04

## ref:
##   https://qiita.com/yagince/items/deba267f789604643bab
ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get -y update
RUN apt-get -y dist-upgrade

RUN apt-get -y install vim git

RUN apt-get -y install perl
RUN apt-get -y install python
RUN apt-get -y install golang

WORKDIR /root/ProjectEuler

## Problem001
COPY problem001/ /root/ProjectEuler/problem001/

## Problem002
COPY problem002/ /root/ProjectEuler/problem002/
