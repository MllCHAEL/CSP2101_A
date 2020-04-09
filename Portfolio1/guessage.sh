#!/usr/bin/env bash
#Michael Andrew Havenga [10496304]

#https://coderwall.com/p/s2ttyg/random-number-generator-in-bash learnt $RANDOM function
#Below Generates a random number between 0 and 50 and adds it to 20.
randInt=$((20 + RANDOM % 51))

#Prompts user to guess and age and stores response as userGuess variable
read -p "What is the person's age? (20 - 70): " userGuess

#used https://tldp.org/LDP/abs/html/comparison-ops.html to find alternative notation than ((<,>,==)) for aesthetic reasons
#Below starts an infinite loop
while true; do
    if [ "$userGuess" -eq "$randInt" ]
    then
         echo "Congratulations, You guessed it!"
        exit
        #If the user's guess equals the random number set the message is printed and code completed

    elif [ "$userGuess" -lt "$randInt" ]
    then
        read -p "Too low, try again: " userGuess
        #If the user's guess is lesser than the random number set the message prompts
        #the user of such and requests another guess which is then set as the user's guess variable

    else [ "$userGuess" -gt "$randInt" ]
        read -p "Too high, try again: " userGuess
        #If the user's guess is lesser than the random number set the message prompts
        #the user of such and requests another guess which is then set as the user's guess variable
    fi
done