#!/bin/sh

service apache2 restart
gmetad -d 1 -p /var/run/gmetad.pid -c /etc/ganglia/gmetad.conf
