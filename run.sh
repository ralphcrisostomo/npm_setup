#!/bin/sh

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
echo ''
if [ -z "$1" ]; then
  while true; do
    echo "Usage: run OPTION"
    echo "\nNPM Setup Options:"
    echo "  i: Install packages."
    echo "  q: Quit/Exit."
    echo ''
    read -p "Enter selection: " response
    echo ''
    process_option $response
  done
else
  process_option $1
fi
echo ''
