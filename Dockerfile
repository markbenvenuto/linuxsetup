FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python curl sudo git

COPY . /root/linuxsetup

RUN TEST_IN_DOCKER=1 /root/linuxsetup/local_bootstrap.sh