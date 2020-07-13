#!/bin/bash -x
wagePerHr=20
isFullTime=2
isPartTime=1
workingDays=20
MaxHrsInMonth=100
totalHours=0
totalWorkingDays=0
function getWorkingHours()
{
	case $1 in
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
	echo $dayHours
}
while [[ $totalHours -lt $MaxHrsInMonth && $totalWorkingDays -lt $workingDays ]]
do
	((totalWorkingDays++))
	dayHours="$( getWorkingHours $((RANDOM%3)) )"
	totalHours=$(($totalHours+$dayHours))
done
totalWages=$(($totalHours*$wagePerHr))
echo "Total Wage = " $totalWages
