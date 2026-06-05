#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
#script for a number guessing game using bash 

#enter username
echo "Enter your username:"
read USERNAME
USERNAME_EXIST=$($PSQL "SELECT username from users WHERE username = '$USERNAME'")
#if username is not found
if [[ -z $USERNAME_EXIST ]]
  then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_UNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  else
  #if username is found
  VIEW_USER=$($PSQL "SELECT username, COUNT(guess), MIN(guess) FROM users LEFT JOIN score USING(user_id) WHERE username = '$USERNAME' GROUP BY username")
  IFS='|' read USER GAMES_PLAYED BEST_GAME <<< "$VIEW_USER"
  echo "Welcome back, $USER! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

#number guessing game
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
NUMBER_OF_GUESSES=0
echo "Guess the secret number between 1 and 1000:"
while true 
do
  read GUESS

#validating input
if ! [[ $GUESS =~ ^[0-9]+$ ]]
  then
  echo "That is not an integer, guess again:"
  continue
fi

#counting guesses
  ((NUMBER_OF_GUESSES++))

#comparison to user input
if (( GUESS < SECRET_NUMBER ))
  then
  echo "It's higher than that, guess again:"
  elif (( GUESS > SECRET_NUMBER ))
  then
  echo "It's lower than that, guess again:"
  else
    break
fi
done

#save game username
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
#save game result
$PSQL "INSERT INTO score(user_id, guess) VALUES($USER_ID, $NUMBER_OF_GUESSES)"

#final message
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
exit