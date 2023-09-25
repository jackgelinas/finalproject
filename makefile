all: README.md

README.md:
	echo "# Guessing Game" > README.md
	echo "Last run:" >> README.md 
	date >> README.md
