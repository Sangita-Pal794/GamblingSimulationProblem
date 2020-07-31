#!/bin/bash
echo "echo Start Gambling With A Stake Of $100 every day and bet $1 in every game!!"
Stake=100
#counter for number of days
no_of_days=0
#counter for calculating the total amount won
totaloAmountWon=0
#counter for calculating the total amount loss
totalAmountLost=0
#the amount gained or lost after every day gamble
totalbalance=0
play()
{
    echo $((RANDOM%2))
}

#Start Playing
while [ $Stake -ge 50 ] && [ $Stake -le 150 ]
do
bet=$(play)
if [[ $bet == 1 ]]
then
	((Stake++))
	echo $Stake
else
	((Stake--))
	echo $Stake
fi
done
#Calculation of no of days
while [ $no_of_days -lt 30 ]
do
	no_of_days++
	currentbalance=Stake
	WinPercentageAmount=$((Stake+ (Stake * 50/100)))
	lostPercentageAmount=$((Stake- (Stake * 50/100)))
    while [ $WinPercentageAmount -gt $currentBalance ] && [ $currentBalance -gt $lostPercentageamount ]
	do
		bet=$(play)
		if [[ $bet == 1 ]]
		then
			((CurrentBalance+=bet))
		else
			((CurrentBalance-=bet))
		fi
	done
		if [ $currentBalance == $WinPresentageAmount ]
		then
                	totalBalance += 100 + currentBalance
                	totalAmountWon += 50
		else
                	totalBalance += currentBalance;
                	totalAmountLost += 50;
		fi

            # displaying the won and lost ammount after 20 days
            	if [ numOfDaysGambled == 20 ]
	    	then
                	echo "Total amount won after 20 days: "  $totalAmountWon
            		echo "Total amount lost after 20 days: " $totalAmountLost
	   	fi
		done
#printing the stake and result after 30 days of gambling
echo "stake: " $Stake
echo "current Balence avliable: " $totalBalance
