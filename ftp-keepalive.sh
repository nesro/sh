#!/bin/bash

while :; do
	sleep 10
	for i in $(find $(mount | grep gvfs | awk '{ print $3 }') -maxdepth 1); do
		ls $i >/dev/null
		echo -n $?
	done
done

