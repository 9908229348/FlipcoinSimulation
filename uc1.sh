#!/bin/bash -x
heads=1
flip=$((RANDOM%2))
if [ $heads -eq $flip ]
then
echo "Heads is Winner"
else
echo "Tails is Winner"
fi
