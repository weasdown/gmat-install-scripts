#!/bin/bash
# Reverts Xerces folder to initial state.

. ./set-variables.sh

export xerces="$depends/xerces"

rm -rf $xerces/linux-build
rm -rf $xerces/linux-install

echo 'Xerces reset complete.'