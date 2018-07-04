#!/usr/bin/env bash
## File: guessinggame.sh

echo "Guess how many files are in the current directory. Type in a number and then press Enter:"

read response

file_count() {
  ls $1 | wc -l
}

num_files=$(file_count $1)

while [[ $response != $num_files ]]
do
  if [[ $response -gt $num_files ]]
  then
    echo "The guess was too high."
  elif [[ $response -lt $num_files ]]
  then
    echo "The guess was too low."
  else
    break
  fi
  echo "Please guess again how many files are in the current directory. Type in a number and then press Enter:"
  read response
done
echo "Congratulations! Your answer is correct!"



