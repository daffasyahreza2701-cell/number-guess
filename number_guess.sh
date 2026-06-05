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
  VIEW_USER=$($PSQL "SELECT username, COUNT(*), MIN(guess) FROM users LEFT JOIN score USING(user_id) WHERE username = '$USERNAME' GROUP BY username")
  IFS='|' read USER PLAY GUESS <<< "$VIEW_USER"
  echo "Welcome back, $USER! You have played $PLAY games, and your best game took $GUESS guesses."