#!/usr/bin/env bash

# Function to prompt for a guess
guess_the_files() {
  local correct_guess=$(ls -1 | wc -l)  # Count the number of files in the current directory
  local guess=-1

  echo "Guess how many files are in the current directory:"

  while [[ $guess -ne $correct_guess ]]; do
    read guess
    if [[ $guess -lt $correct_guess ]]; then
      echo "Too low! Try again:"
    elif [[ $guess -gt $correct_guess ]]; then
      echo "Too high! Try again:"
    fi
  done

  echo "Congratulations! You guessed the correct number of files."
}

# Call the function
guess_the_files
