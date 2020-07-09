#!/bin/bash -x
empRatePerHr=20
isFullTime=2
isPartTime=1

var=$((RANDOM%3))

case "$var" in
	$isFullTime)
		echo "Employee is present Full Time"
		empHrs=8
        	;;
	$isPartTime)
		echo "Employee is present Half Time"
	        empHrs=4
        	;;
	*)
		echo "Employee is absent"
		empHrs=0
		;;
esac
echo "salary=" $(($empHrs*$empRatePerHr))
