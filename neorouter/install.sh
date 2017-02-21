#!/bin/bash

# chfn workaround - Known issue within Dockers
ln -s -f /bin/true /usr/bin/chfn

apt-get -q update
apt-get install -qy gdebi-core wget

#NeoRouter version 2.3.1.4360

wget -q http://download.neorouter.com/Downloads/NRFree/Update_2.3.1.4360/Linux/Ubuntu/nrclient-2.3.1.4360-free-ubuntu-amd64.deb -O /tmp/neorouter.deb
if [ $? -eq 0 ]; then
	gdebi -n /tmp/neorouter.deb 
	rm -f /tmp/neorouter.deb
fi

