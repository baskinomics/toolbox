#!/bin/bash

# Name: 
#   generate-ssh-key
# Parameters:
# 
# Description:
#   Generates a 4096-bit RSA key for the current user and pipes the output 
#   of `cat` to the system clip via `xclip`.
function generate-ssh-key() {
    ssh-keygen -t rsa -b 4096
    cat -pp ~/.ssh/id_rsa.pub | xclip -sel clip
}

function generate-gpg-key() {

}