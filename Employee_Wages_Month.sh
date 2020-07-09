#!/bin/bash

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHr=20
numWorkingDays=20

for(( day=1;day<=$numWorkingDays;day++ ))
do
        empcheck=$((RANDOM%3))
                case $empcheck in
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
        salary=$(($empHrs*$empRatePerHr))
        totalSalary=$(($totalSalary+$salary))
done
echo "Salary of the month= " $totalSalary
