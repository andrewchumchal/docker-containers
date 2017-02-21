FROM docker/whalesay:latest

MAINTAINER Andrew Chumchal <andrew@andrewchumchal.com>

VOLUME ["/config"]

RUN apt-get -y update \
	&& apt-get install -y wget

RUN wget -c http://download.neorouter.com/Downloads/NRFree/Update_2.3.1.4360/Linux/Ubuntu/nrclient-2.3.1.4360-free-ubuntu-amd64.deb 

RUN dpkg -r nrclient

RUN sudo dpkg -i nrclient-2.3.1.4360-free-ubuntu-amd64.deb.deb