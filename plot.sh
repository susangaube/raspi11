#!/bin/bash
filename="/home/susi/temperatur1.rrd"
rrdtool graph temperatur1.png \
		--imgformat 'PNG' \
		--width 645 \
		--height 111 \
		--start -1hour \
		--end now \
		--vertical-label "Grad Celsius" \
		--alt-autoscale \
		--title Temperatur \
		DEF:temp1=$filename:temp1:AVERAGE \
		AREA:temp1#FFB6C1 \
		LINE1:temp1#FF00FF:'Temperatur DS18B20'
