#!/bin/bash -x
wagePerHour=20
isPartTime=1
isFullTime=2
var=$((RANDOM%3))
if [[ $var -eq $isFullTime ]]
then
	dayHours=8
elif [[ $var -eq $isPartTime ]]
then
	dayHours=4
else
	dayHours=0
fi
echo "Daily Wage="$(($wagePerHour*$dayHours))
