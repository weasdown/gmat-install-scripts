#!/bin/bash
## Root file to download and install all dependencies.
printf 'Setting up dependencies for GMAT in %s.\n\n' $GMAT_GIT

. ./set-variables.sh  # Set environment variables.

# Always start in and return to the depends directory.
cd $depends

export logs_path="$depends/logs"
mkdir -p $logs_path  # Make logs path.
printf '\nMade logs folder at %s\n' $logs_path

printf '\nSetting up Xerces...\n'
$scripts/setup-xerces.sh
