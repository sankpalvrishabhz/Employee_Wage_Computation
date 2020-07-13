#!/bin/bash -x
wagePerHr=20
isFullTime=2
isPartTime=1
workingDays=20
for(( day=1; day<=$workingDays; day++ ))
do
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
	dailyWage=$(($dayHours*$wagePerHr))
        totalWage=$(($totalWage+$dailyWage))
done
echo "Total Wage = " $totalWage
