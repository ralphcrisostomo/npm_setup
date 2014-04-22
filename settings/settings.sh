#!/bin/bash

# DESCRIPTION
# Defines global settings.

# SETTINGS
# General
set -o nounset
set -o errexit
set -o pipefail

# Globals
SETTINGS_ROOT="$PWD/settings"
PACKAGES_SOURCE_PATH="$SETTINGS_ROOT/packages.txt"
