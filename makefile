# The makefile should produce the README.md which should contain the following information:
# 
# The title of the project.
# The date and time at which make was run.
# The number of lines of code contained in guessinggame.sh.

README.md: 
	echo "## Project Title: Guessing Game (guessinggame.sh)" > README.md
	echo "" >> README.md
	echo "This file, README.md, was created at: " >> README.md
	date >> README.md
	echo "" >> README.md
	echo "The number of lines of code contained in **guessinggame.sh** are:" >> README.md
	cat guessinggame.sh | wc -l | egrep -o [0-9]+ >> README.md
	echo "lines of code
