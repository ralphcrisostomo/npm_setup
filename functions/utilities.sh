#!/bin/bash

# DESCRIPTION
# Defines general utility functions.

# Installs NPM packages.
function install_packages() {
  if [[ -f "$PACKAGES_SOURCE_PATH" ]]; then
    printf "Installing packages...\n"

    local installed_packages=($(npm list --parseable --global --depth=1))

    while read line; do
      # Skip blank or comment lines.
      if [[ "$line" != '' && "$line" != *'#'* ]]; then
        local package_name=$(printf -- "$line" | awk '{print $2}')

        # Only install packages not already installed.
        if [[ "${installed_packages[*]}" != *"$package_name"* ]]; then
          printf "Installing: $package_name...\n"
          eval "npm install $line"
        fi
      fi
    done < "$PACKAGES_SOURCE_PATH"

    printf "NPM package install complete!\n"
  else
    printf "Install canceled. Missing package settings: $PACKAGES_SOURCE_PATH\n"
  fi
}
export -f install_packages
