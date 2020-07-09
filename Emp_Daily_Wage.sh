#!/bin/bash -x

empRatePerHr=20
empHrs=8

var=$((RANDOM%2))
if [[ $var -eq 1 ]]
then
echo "Employee is present"
echo "salary=" $(($empRatePerHr*$empHrs))
else
echo "Employee is absent"
echo "salary=" 0
fi
