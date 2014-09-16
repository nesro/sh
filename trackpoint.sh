#!/bin/bash

if ! id | grep root >/dev/null; then
	echo "you need to be root"
	exit 1
fi

synclient TouchpadOff=1
echo -n 255 > /sys/devices/platform/i8042/serio1/serio2/speed
echo -n 255 > /sys/devices/platform/i8042/serio1/serio2/sensitivity

