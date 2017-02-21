FROM phusion/baseimage:0.9.18

MAINTAINER Andrew Chumchal <andrew@andrewchumchal.com>

# Set correct environment variables
ENV DEBIAN_FRONTEND="noninteractive" HOME="/root" LC_ALL="C.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8"

#Install NeoRouter
add install.sh /
RUN bash /install.sh

volume /config

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]