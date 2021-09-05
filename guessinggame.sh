#!/bin/sh
#Guessing game: Guess number of files in current directory 

for i in * #For loop to specify requirements of assignment, would have otherwise used "ls -f | wc -l" | egrep -o [0-9]+"
do 
	if [ -f "$i" ] #Identify all non-hidden files, future versions could ask user to specify hidden or non-hidden
    then
    count=$((count+1)) 
    fi
done

check_guess () {
	if [[ $guess -lt $count ]]
	then 
		echo "you entered $guess, that is less than the number of files in the current directory."
		echo "Please try again." 
		ask_function
	elif [[ $guess -gt $count ]]
	then 
		echo "you entered $guess, that is greater than the number of files in the current directory."
		echo "Please try again."
		ask_function
	else
		echo "Contratulations, you guessed correctly!  There are $guess files in the current directory. Thanks for playing!"
	fi
}

ask_function () {
	echo "How many files are there in the current directory?"
	read guess

	until [[ $guess =~ ^[1-9][0-9]*$ ]] || [[ $guess =~ ^[0]$ ]]
		do
		echo "Oops! I am only programmed to accept numerical entries, please try again!"
		read guess
	done
	
	echo "You guessed $guess files.  Let me think about this...."
	check_guess
}

ask_function

