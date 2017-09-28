#!/bin/bash
########
# Script that is supposed to help me to easily change between portrait mode and landscape
# Contac: YamiFrankc
#####


# Set up current(or last!) status of monitor. Variable
status=$(cat ~/.monitorstatus)

# Set up correct resolution mode for monitor and for capture device outputs
xrandr --output VGA-1 --mode 1920x1080
xrandr --output HDMI-1 --mode 1920x1080

if [ $status = portrait ]
	then
	        # These shouldnt be needed...
	        #xrandr --output VGA-1 --rotate normal
	        #xrandr --output HDMI-1 --rotate normal
		herbstclient set_monitors 1920x1080+0+0
		echo "landscape" > ~/.monitorstatus

	else
		xrandr --output VGA-1 --rotate right
		xrandr --output HDMI-1 --rotate right
		herbstclient set_monitors 1080x1920+0+0
		echo "portrait" > ~/.monitorstatus

fi
