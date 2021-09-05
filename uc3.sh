#!/bin/bash -x
heads=0
tails=1
hc=0
tc=0
for((i=1;i<=70;i++))
do
while [ $hc -ne 21 ] && [ $tc -ne 21 ]
do
flip=$((RANDOM%2))
if [ $flip -eq $heads ]
then
hc=$(($hc+1))
else
tc=$(($tc+1))
fi
done
done
echo "Heads count::" $hc
echo "Tails count::" $tc
if [ $hc -eq $tc ]
then
echo "Its a Tie"
elif [ $hc -lt $tc ]
then
d=$(($tc-$hc))
echo "Tails won by $d"
else
d=$(($hc-$tc))
echo "Heads won by $d"
fi
