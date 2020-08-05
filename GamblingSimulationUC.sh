#!/bin/bash

echo "echo Start Gambling With A Stake Of $100 every day and bet $1 in every game!!"

Stake=100;
bet=1;
maxWin=150;
maxLose=50;

total=$((Stake));

while [[ $total -le $maxWin && $total -ge $maxLose ]]
do
	result=$(($RANDOM%2))
	if [[ $result -eq 1 ]]
	then
		echo "You won 1 dollar"
		((total++))
	else
		echo "You lost 1 dollar"
		((total--))
	fi
done
