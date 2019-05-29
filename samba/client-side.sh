#!/bin/bash

apt-get install cifs-utils
mount -t cifs -o user=chenq,pass=123456 //45.77.191.127/data /mnt
umount -f /mnt
