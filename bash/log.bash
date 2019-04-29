#!/bin/bash

# Name: 
#   log()
# Parameters:
#   TEXT: The text to print to stdout
# 
# Example:
#   log "Hello, World!"
# 
#   [log.bash] Hello, World!
function log() {
    printf "[$0] $1\n"
}