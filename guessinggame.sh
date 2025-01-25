#!/usr/bin/env bash

# Function to count files in the current directory
count_files() {
  echo $(ls -1 | wc -l)
}

# Main loop to guess the number of files
guess_number() {
  correct=$(count_files)
  guess=0

  while [[ $guess -ne $correct ]]
  do
    echo "Guess the number of files in the current directory: "
    read guess

    if [[ $guess -lt $correct ]]
    then
      echo "Too low!"
    elif [[ $guess -gt $correct ]]
    then
      echo "Too high!"
    else
      echo "Congratulations! You guessed correctly."
    fi
  done
}

guess_number
