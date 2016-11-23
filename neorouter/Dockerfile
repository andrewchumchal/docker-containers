FROM phusion/baseimage:0.9.18
MAINTAINER Andrew Chumchal(support@andrewchumchal.com)

# Set correct environment variables
ENV HOME /root

# Ensure UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8

# Fix a Debianism of the nobody's uid being 65534
RUN usermod -u 99 nobody
RUN usermod -g 100 nobody

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

# Download NeoRouter
RUN wget -c http://download.neorouter.com/Downloads/NRFree/Update_2.3.1.4360/Linux/Ubuntu/nrclient-2.3.1.4360-free-ubuntu-amd64.deb

# Install NeoRouter
RUN sudo dpkg -i nrclient-2.3.1.4360-free-ubuntu-amd64.deb