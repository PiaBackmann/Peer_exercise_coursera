#!/usr/bin/env bash
# File: guessinggame.sh


function response {
	if [[ $1 -lt $2 ]]
	then
		echo "Please guess again. Your number was too low..."
	elif [[ $1 -gt $2 ]]
	then
		echo "Please guess again. Your number was too high..."
	fi
}

numFiles=$(ls | wc -l) 
echo "How many files are in this folder? Please take a guess, estimated user:"
read guess

while [[ $guess -ne $numFiles ]]
do
	response $guess $numFiles
	read guess
done
echo "Congratulations! You guessed correctly :-)"
