#!/bin/sh -l

# Ensure aliases are loaded
#. /etc/profile.d/aliases.sh

if [ $# -eq 0 ]
  then
    echo "Devcontainer: No arguments supplied"
fi
