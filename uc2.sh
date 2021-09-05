#!/bin/bash -x
heads=0
tails=1
hc=0
tc=0
for((i=1;i<=10;i++))
do
flip=$((RANDOM%2))
if [ $flip -eq $heads ]
then
hc=$(($hc+1))
else
tc=$(($tc+1))
fi
done
echo "Heads count::" $hc
echo "Tails count::" $tc

