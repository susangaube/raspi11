#!/bin/bash

rot=16
taster=13

pinctrl set $rot op
pinctrl set $taster ip

while true
do
pinctrl get 13 |grep hi && pinctrl set $rot dh
pinctrl get 13 |grep lo && pinctrl set $rot dl
sleep 0.1
done
