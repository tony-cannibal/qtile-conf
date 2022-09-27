#!/usr/bin/sh

disk=$(df -h /home | tail -n 1 | awk '{print $4}')

printf "\uf7c9 %s" $disk
