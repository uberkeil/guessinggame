# The guessinggame.sh program should have the following behavior:
# 
# When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
# If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
# If the user's guess is correct then they should be congratulated and the program should end.
# The program should not end until the user has entered the correct number of files in the current directory.
# The program should be able to be run by entering bash guessinggame.sh into the console.
# The program should contain at least one function, one loop, and one if statement.
# The program should be more than 20 lines of code but less than 50 lines of code.
# The guessinggame.sh program should have the following behavior:
# 
# When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.

# If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.

# If the user's guess is correct then they should be congratulated and the program should end.

# The program should not end until the user has entered the correct number of files in the current directory.

# The program should be able to be run by entering bash guessinggame.sh into the console.

# The program should contain at least one function, one loop, and one if statement.

# The program should be more than 20 lines of code but less than 50 lines of code.






# Piecing it all together

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

