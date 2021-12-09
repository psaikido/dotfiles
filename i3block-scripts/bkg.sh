#!/bin/bash

wallp=$(find /data/pix/wallpapers/ -name *.jpg -type f | shuf -n 1)
#wallp=$(find /data/pix/capn-damo/ -name *.jpg -type f | shuf -n 1)
#wallp=$(find /data/pix/wallpapers-hc/ -name *.jpg -type f | shuf -n 1)
/usr/bin/nitrogen --set-zoom-fill ${wallp} --save
echo ${wallp} > /home/hughie/pix/wallpapers/current.txt
