#!/bin/bash
while :
do
    echo -n " Temperature: "
    TEMP=`cat /sys/class/thermal/thermal_zone0/temp`
    TEMP=$[ $TEMP / 1000 ]
    FREQ=`cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq`
    FREQ=$[ $FREQ / 1000 ]
    echo "$TEMP C, CPU Scaling: $FREQ MHz"
    sleep 1
done