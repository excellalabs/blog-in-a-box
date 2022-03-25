#!/bin/sh -l

# Ensure aliases are loaded
#. /etc/profile.d/aliases.sh

if [ $# -eq 0 ]
    then
        exit 0
fi

echo "Devcontainer: argument supplied."
echo "Only one argument is allowed right now, so we'll assume you want to build."

build

exit 0