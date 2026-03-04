#!/bin/bash
## Sets environment variables used across the other scripts. Should be called at the start of each script.

. ~/.profile

user="$(whoami)"

export GMAT_GIT="/home/$user/dev/non-OH/gmat/gmat-git"

export scripts="$GMAT_GIT/../gmat-install-scripts"
export depends="$GMAT_GIT/depends"

# Path variables for each dependency.
export cspice="$depends/cspice"
export java="$depends/java"
export swig="$depends/swig"
export wxWidgets="$depends/wxWidgets"
export xerces="$depends/xerces"

export cores=$(nproc --all) # Number of processor cores.

echo 'All environment variables set.'

