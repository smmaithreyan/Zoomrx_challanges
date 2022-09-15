#!/bin/bash
echo "Enter the type of rotation (time/size): "
read type
echo "Enter the log path: "
read path
if [ ! -d $path ]; then
	mkdir -p $path
fi 

size_based_rot()
{
	echo  "$path/*.log { \n     create 0644 root \n     daily \n     size 10M \n     missingok\n     rotate 7\n     notifempty \n}" > etc/logrotate.d/testlog
}

time_based_rot()
{
	echo  "$path/*.log { \n     create 0644 root \n     daily \n     missingok\n     rotate 7\n     notifempty \n}" > etc/logrotate.d/testlog
}

if [ $type == "size" ]; then
        size_based_rot
fi
if [ $type == "time" ]; then
        time_based_rot
fi

