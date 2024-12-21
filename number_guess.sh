#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username: "
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
if [[ -z $USER_ID ]]
then
  INSERT=$($PSQL "INSERT INTO users(name) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  echo -e "\n$($PSQL "SELECT CONCAT('Welcome back, $USERNAME! You have played ', COUNT(*), ' games, and your best game took ', COALESCE(MIN(tries), 0), ' guesses.') FROM games WHERE user_id = $USER_ID")"
fi

RANDOM_NUMBER=$(( $RANDOM % 1000 + 1 ))
COUNT=0

echo -e "\nGuess the secret number between 1 and 1000:"
read GUESSED

COUNT=$(( $COUNT + 1 ))
while [[ $RANDOM_NUMBER -ne $GUESSED ]]
do
  if [[ $GUESSED =~ ^-?[0-9]+$ ]]
  then
    if [[ $RANDOM_NUMBER -lt $GUESSED ]]
    then
      echo -e "\nIt's lower than that, guess again:"
    elif [[ $RANDOM_NUMBER -gt $GUESSED ]]
    then
      echo -e "\nIt's higher than that, guess again:"
    fi
  else
    echo -e "\nThat is not an integer, guess again:"
  fi
  read GUESSED
  COUNT=$(( $COUNT + 1 ))
done

INSERT=$($PSQL "INSERT INTO games(tries, user_id) VALUES ($COUNT, $USER_ID)")
echo -e "\nYou guessed it in $COUNT tries. The secret number was $GUESSED. Nice job!"
