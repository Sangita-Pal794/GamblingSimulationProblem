#!/bin/bash
echo "echo Start Gambling With A Stake Of $100 every day and bet $1 in every game!!"

Stake=100
#counter for number of days
no_of_days=0
#counter for calculating the total amount won
totalAmountWon=0
#counter for calculating the total amount loss
totalAmountLost=0
#the amount gained or lost after every day gamble
totalbalance=0
gambleResult=0 #To store the output of gambleResults
maxBetAmount=$(($Stake+ ($Stake * 50/100)))
minBetAmount=$(($Stake- ($Stake * 50/100)))

play()
{
    echo $((RANDOM%2))
}

gambleResult=$(GambleResults)
repeatGamble($(gambleResult))

if [ $gambleResult -le 15 ]
then
           echo "Sorry you went in loss";
            echo "Can't continue";
fi

repeatGamble(){

if [ $gambleResult -gt 15 ]
then
	echo "Would you like to continue to gamble";
         echo "1/ 0";
fi

if [ userWish == 1 ]
then
	repeatGamble($(gambleResult))
else
	echo "Bye,thankx for playing gambling"
fi
}

GambleResults()
{
	no_of_days=0
	noofdayswon=0
	noofdayslost=0

	maxWinPercentage = 0;
	maxLossPercentage = 0;

	dayWithMaxWin = 0;
	dayWithMaxLoss = 0;


#creating a function to calculate the accounts for given number of days
        while [ $no_of_days -lt 30 ] 
	do
	no_of_days=$(($no_of_days+1))
#calling a function to calculate the result of gambling perDay
        currentBalance = $Stake
        while [ $maxBetAmount -gt $currentBalance && $currentBalance -gt $minBetAmount ] 
	do
            # calling the function within the if statement
            bet=$(play)
	    if [[ $bet == 1 ]]
            then
        	((currentBalance++))
		((noofdayswon++))
	    else
        	((currentBalance--))
		((noofdayslost++))
	    fi
      done

       totalNumOfGamble = $(($noofdayswon + $noofdayslost));
       winPercentage = $((100 * $(($noofdayswon / $totalNumOfGamble))));
       LossPercentage = $((100 * $(($noofdayslost / $totalNumOfGamble))));

            if [ $maxWinPercentage < $winPercentage ]
	    then
                maxWinPercentage = $winPercentage;
                dayWithMaxWin = $no_of_days;
            fi

            if [ $maxLossPercentage < $LossPercentage ]
	    then
                maxLossPercentage = $LossPercentage;
                dayWithMaxLoss = $no_of_days;
            fi

            if [ $currentBalance == $maxBetAmount ]
	     then
                noofdayswon=$(($noofdayswon+1))
             else 
                noofdayslost=$(($noofdayslost+1))
            fi
            # calling a function for printing after 20 days of gambling.
            printingAfter20Days( $no_of_days $noofdayswon $noofdayslost )
        done

        #printing the number of days won or lost and result after 30 day gamble.
        echo "Number of days won: " $noofdayswon;
        echo "Number of days lost: " $noofdayslost;
        echo "current Balance available: "$(($(totalCalculation($noofdayswon $currentBalance)) + $(totalCalculation($noofdayslost $currentBalance))));
        echo "day with max win: "  $dayWithMaxWin"th day";
        echo "day with max loss: " $dayWithMaxLoss"th day";
	return $noofdayswon
}
#function to print the per day gambling result after 20 days
    printingAfter20Days(){
        #displaying the won and lost amount after 20 days
        if [ $no_of_days -ge 20 ]
	then
            echo "Total amount won after " $no_of_days " days:" $(totalCalculation($numofdayswon $currentBalance))
            echo "Total amount lost after " $no_of_days  " days: " $(totalCalculation($numofdayslost $currentBalance))
        fi
}
    #To calculate the total amount after investing
    function totalCalculation()
{
        echo $(($no_of_days * $currentBalance))
}

