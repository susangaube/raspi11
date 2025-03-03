#!/bin/bash
while true
do
value=`cat /sys/bus/w1/devices/28-00000a54ef5c/w1_slave  |grep t=| awk '{print $10}' |sed 's/t=\(..\)\(...\)/\1.\2/'`
sleep 1
rrdupdate /home/susi/temperatur1.rrd N:$value
echo $value
sleep 1
done
