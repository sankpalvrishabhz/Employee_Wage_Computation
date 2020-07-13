#!/bin/bash -x
wagePerHr=20
isFullTime=2
isPartTime=1
var=$((RANDOM%3))
case "$var" in
	$isFullTime)
        	dayHours=8
        	;;
	$isPartTime)
        	dayHours=4
	        ;;
	*)
		dayHours=0
		;;
esac
echo "Daily Wage=" $(($dayHours*$wagePerHr))
