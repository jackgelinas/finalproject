#!/usr/bin/env bash
# File: guessinggame.sh

# Function to query user until valid input: queryuser

function queryuser {
	echo "How many files are in the current directory? (Please enter answer as an integer)"
	read answer
	while [[ ! $answer =~ ^[0-9]+$ ]]
	do
        	clear && echo "Your answer was not an integer, please try again." && queryuser
	done
}

# Assign number of files as variable: numfiles

numfiles=$(ls -al | wc -l) && numfiles=$(echo "$numfiles - 1" | bc)

# Clear screen and ask user for answer, loop unit integer is input.

queryuser

# If statements for greater, less than, correct, or if non-integer to restart program

if [[ $answer -gt $numfiles ]]
then
	clear && echo "Your answer was too high. Please try again."
	bash guessinggame.sh
elif [[ $answer -lt $numfiles ]]
then
	clear && echo "Your answer was too low. Please try again."
	bash guessinggame.sh
elif [[ $answer -eq $numfiles ]]
then
	clear && echo "Your answer was correct! Thanks for playing"
else
	clear && echo "Error. Please try again."
	bash guessinggame.sh
fi
