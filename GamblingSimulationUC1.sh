#!/bin/bash
amount=100
won=0
loose=0
aim=200
play()
{   
    echo $((RANDOM%2))
}
while [ $amount -gt 0 ] && [ $amount -le $aim ]
do
    bet=$(play)
    if [[ $bet == 1 ]]
    then
        ((amount++))
        ((won++))
        echo $amount
    else
        ((amount--))
        ((loose++))
        echo $amount
    fi
done
#if [[ $amount == 0 ]]
#then 
#    echo "he has lost the game"
#else 
#    echo " he has won the game"
#fi

#echo "he won $won times and loosed  $loose times "
