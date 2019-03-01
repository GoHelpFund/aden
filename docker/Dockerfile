FROM debian:stretch
LABEL maintainer="Help Developers <dev@help.org>"
LABEL description="Dockerised HelpCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
