#! /bin/sh
#makefile which autogenerates README.md document for guessinggame.sh

README.md: 
	echo "## Project Title: Guessing Game (guessinggame.sh)" > README.md
	echo "" >> README.md
	echo "This file, README.md, was created at: " >> README.md
	date >> README.md
	echo "" >> README.md
	echo "The number of lines of code contained in **guessinggame.sh** are:" >> README.md
	cat guessinggame.sh | wc -l | egrep -o [0-9]+ >> README.md
