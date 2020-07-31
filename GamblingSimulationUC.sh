#!/bin/bash
echo "echo Start Gambling With A Stake Of $100 every day and bet $1 in every game!!"
Stake=100
#bet=1
play()
{
    echo $((RANDOM%2))
}
#Start Playing
bet=$(play)
if [[ $bet == 1 ]]
then
	((Stake++))
	echo $Stake
else
	((Stake--))
	echo $Stake
fi

