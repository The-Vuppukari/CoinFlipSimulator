#!/bin/bash -x

isHeads=0
isTails=1
coinFlip=$((RANDOM%2))

if [ $isHeads -eq $coinFlip ]
then
	print "Heads"
elif [ $isTails -eq $coinFlip ]
then
	print "Tails"
fi
