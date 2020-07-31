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
maxBetAmount=$((Stake+ (Stake * 50/100)))
minBetAmount=$((Stake- (Stake * 50/100)))
play()
{
    echo $((RANDOM%2))
}
GambleResults()
{
no_of_days=0
noofdayswon=0
noofdayslost=0

#creating a function to calculate the accounts for given number of days
        while [ no_of_days -lt 30 ] 
	do
	no_of_days++
#calling a function to calculate the result of gambling perDay
            currentBalance = $(returnsOfGamblingPerDay($maxBetAmount, $minBetAmount))
	currentBalance = Stake

            if [ currentBalance == maxBetAmount ]
	    then
                noofdayswon++;
             else 
                numOfDayslost++;
            fi
            #calling a function for printing after 20 days of gambling
            printingAfter20Days($no_of_Days,$noOfdayswon,$noofdayslost)
       done

        #printing the number of days won or lost and result after 30 day gamble
        echo "Number of days won: " $noofdayswon
        echo "Number of days lost: " $noofdayslost
        echo "current Balance available: " $(($(totalCalculation($noofdayslost, 50, 100) + $(totalCalculation($noofdayslost, 50, 0)))
}

    #To calculate the total amount after investing
    totalCalculation($no_of_days, $ProfitOrLoss, $currentBalance)
        return $($noOfDays * $(($currentBalance + $ProfitOrLoss)))

    #function to calculate the returns of gambling per day
    returnsOfGamblingPerDay($maxBetAmount,$minBetAmount) {
        #calculate the amount per gamble gamble
        currentBalance = Stake
        while [ $maxBetAmount -gt $currentBalance && $currentBalance -gt $minBetAmount ] 
	do
            # calling the function within the if statement
            bet=$(play)
		if [[ $bet == 1 ]]
                 then
        	((CurrentBalance++))
		else
        	((CurrentBalance--))                                                                                                                                      echo $Stake
		fi
     done
     return currentBalance
}
    #function to print the per day gambling result after 20 days
    printingAfter20Days(){
        #displaying the won and lost amount after 20 days
        if [ $no_of_days -ge 20 ]
	then
            echo "Total amount won after " $numOfDaysGambled " days: " $totalCalculation($numOfDaysWon, 50, 0)
            echo "Total amount lost after " $numOfDaysGambled  " days: " $totalCalculation(numOfDaysLost, 50, 0)
        fi
     }

