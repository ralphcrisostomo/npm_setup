#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./run.sh OPTION

# SETTINGS
source settings/settings.sh

# FUNCTIONS
source functions/utilities.sh
source functions/options.sh

# EXECUTION
while true; do
  if [ $# == 0 ]; then
    printf "\nUsage: run OPTION\n"
    printf "\nNPM Setup Options:\n"
    printf "  i: Install packages.\n"
    printf "  q: Quit/Exit.\n\n"
    read -p "Enter selection: " response
    printf "\n"
    process_option $response
  else
    process_option $1
  fi
done
