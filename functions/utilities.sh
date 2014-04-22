#!/bin/bash

# DESCRIPTION
# Defines general utility functions.

# Installs NPM packages.
function install_packages() {
  if [[ -f "$PACKAGES_SOURCE_PATH" ]]; then
    echo "Installing packages..."

    local installed_packages=( $(npm list --parseable --global --depth=1) )

    while read line; do
      # Skip blank or comment lines.
      if [[ "$line" != '' && "$line" != *'#'* ]]; then
        local package_name=$(echo $line | awk '{print $2}')

        # Only install packages not already installed.
        if [[ "${installed_packages[*]}" != *"$package_name"* ]]; then
          npm install $line
        fi
      fi
    done < "$PACKAGES_SOURCE_PATH"

    echo "NPM package install complete!"
  else
    echo "Install canceled. Missing package settings: $PACKAGES_SOURCE_PATH"
  fi
}
export -f install_packages
