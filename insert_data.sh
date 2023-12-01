#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
$TRUNCATE="$($PSQL "TRUNCATE teams CASCADE")"
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # TEAMS TABLE
  echo $TRUNCATE
  if [ $WINNER == "winner" ]
  then
    continue
  fi
  CHECK_WINNER="$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")"
  CHECK_OPPONENT="$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")"
  if [ -z $CHECK_WINNER ]
  then
    $INSERT_WINNER="$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
    echo $INSERT_WINNER
  elif [ -z $CHECK_OPPONENT ]
  then
    $INSERT_OPPONENT="$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
    echo $INSERT_OPPONENT
  fi
done
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [ $WINNER == "winner" ]
  then
    continue
  fi
  # GAMES TABLE
  WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
  OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
  
  $INSERT_GAMES="$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")"
  echo $INSERT_GAMES
done