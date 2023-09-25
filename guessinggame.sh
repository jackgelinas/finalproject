#!/usr/bin/env bash
# File: guessinggame.sh

function queryuser {
	echo "How many files are in the current directory? (Please enter answer as an integer)"
	read answer
}

clear && queryuser

while [[ ! $answer =~ ^[0-9]+$ ]]
do
	clear && echo "Your answer was not an integer, please try again." && queryuser
done
