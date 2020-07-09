#!/bin/bash -x

empRatePerHr=20
isPartTime=1
isFullTime=2

var=$((RANDOM%3))
if [[ $var -eq $isFullTime ]]
then
echo "Employee is present Full Time"
empHrs=8
elif [[ $var -eq $isPartTime ]]
then
echo "Employee is presentHalf Time"
empHrs=4
else
echo "Employee is absent"
empHrs=0
fi
echo "salary=" $(($empHrs*$empRatePerHr))
