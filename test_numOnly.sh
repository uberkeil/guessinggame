echo "Please enter a number."
read entry

echo "You entered $guess"

until [[ $guess =~ [0-9] ]]
do
	echo "Oops! I am only programmed to accept numerical entries, please try again!"
	echo "Please enter a number."
	read guess
done

echo "You entered $guess"

