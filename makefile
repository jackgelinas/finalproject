all: README.md

README.md:
	echo "# Guessing Game" > README.md
	echo "## Last run:" >> README.md 
	date >> README.md
	echo "Total lines of code in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
