#!/bin/bash
echo "echo Start Gambling With A Stake Of $100 every day and bet $1 in every game!!"

Stake=100
BET=1

result=$(($RANDOM%2))

if [[ $result -eq 1 ]]
then
	echo "You won 1 dollar"
	total=$(($stake+1))
else
	echo "You lost 1 dollar"
	total=$(($stake-1))
fi
