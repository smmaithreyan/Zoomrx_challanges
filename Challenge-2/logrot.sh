#!/bin/bash
echo "Enter the type of rotation (time/size): "
read type
echo "Enter the log path: "
read path  
logpath=`$path/app_logs.log`
touch $logpath

size_based_rot()
{
MaxFileSize=10M
sh app.sh >> $logpath &
file_size=`du -sh $logpath|awk '{print $1}'`
if [ $file_size == $MaxFileSize ];then   
        timestamp=`date +%s`
        mv $logpath $logpath.$timestamp
        touch $logpath
fi
}

time_based_rot()
{
cur_date=`date +%m-%d-%Y`
sh app.sh >> $logpath.$cur_date &
}

if [ $type == "size" ]; then
	size_based_rot
fi
if [ $type == "time" ]; then
        time_based_rot
fi

