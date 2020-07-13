#!/bin/bash -x
echo "Checking Employee Present or Absent"
if [[ $((RANDOM%2)) -eq 1 ]]
then
echo "Employee is present"
else
echo "Employee is absent"
fi
