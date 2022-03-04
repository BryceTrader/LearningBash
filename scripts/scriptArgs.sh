#!/bin/bash

function File {
    # think you are inside the file
    # Change here
	numArgs=$#
    echo "I passed in ${numArgs} arguments."
	return
}

# Do not change anything
if [ ! $# -lt 1 ]; then
    File $*
fi
