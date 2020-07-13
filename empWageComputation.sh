#!/bin/bash -x
wagePerHour=20
dayHour=8
if [[ $((RANDOM%2)) -eq 1 ]]
then
echo "Daily Wage="$(($wagePerHour*$dayHour))
else
echo "Daily Wage="0
fi
