# The makefile should produce the README.md which should contain the following information:
# 
# The title of the project.
# The date and time at which make was run.
# The number of lines of code contained in guessinggame.sh.

readme_test.txt: 
	echo "##Project Title: Guessing Game (guessinggame.sh)" > readme_test.txt
	echo "" >> readme_test.txt
	echo "This file, README.md, was created at: " >> readme_test.txt
	date >> readme_test.txt
	echo "" >> readme_test.txt
	echo "This directory contains the following number of files:" >> readme_test.txt
	ls -l | wc -l | egrep -o [0-9]+ >> readme_test.txt
