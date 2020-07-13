#!/bin/bash -x
wagePerHr=20
isFullTime=2
isPartTime=1
workingDays=20
MaxHrsInMonth=100
totalHours=0
totalWorkingDays=0
while [[ $totalHours -lt $MaxHrsInMonth || $totalWorkingDays -lt $workingDays ]]
do
	((totalWorkingDays++))
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
	totalHours=$(($totalHours+$dayHours))
done
totalWages=$(($totalHours*$wagePerHr))
echo "Total Wage = " $totalWages
