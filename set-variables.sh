#!/bin/bash
## Sets environment variables used across the other scripts. Should be called at the start of each script.

export scripts="$GMAT_GIT/scripts"
export depends="$GMAT_GIT/depends"

# Path variables for each dependency.
export cspice="$depends/cspice"
export java="$depends/java"
export swig="$depends/swig"
export wxWidgets="$depends/wxWidgets"
export xerces="$depends/xerces"

echo 'All environment variables set.'