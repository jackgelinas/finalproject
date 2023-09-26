#!/usr/bin/env bash
# File: guessinggame.sh
function queryuser {
	echo "How many files are in the current directory? (Please enter answer as a single integer)"
	read answer
	while [[ ! $answer =~ ^[0-9]+$ ]]
	do
        	clear && echo "Your answer was not an a single integer (eg. '16'), please try again." && queryuser
	done
}
numfiles=$(ls -al | wc -l) && numfiles=$(echo "$numfiles - 3" | bc)
queryuser
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
	make clean && make && clear && echo "Your answer was correct!!! Thanks for playing!"
fi

