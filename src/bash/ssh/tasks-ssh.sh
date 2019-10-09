#!/bin/bash

# Name:
#   generate-ssh-key
# Parameters:
#
# Description:
#   Generates a 4096-bit RSA key for the current user and pipes the output
#   of calling `cat` on the public key to the system clipboard via `xclip`.
function generate-ssh-key() {
    ssh-keygen -t rsa -b 4096
    cat -pp ~/.ssh/id_rsa.pub | xclip -sel clip
}

# Name:
#   copy-ssh-key-clip
# Parameters:
#
# Description:
#   Pipes the output of calling `cat` on the public key to the system clipboard via `xclip`.
function copy-ssh-key-clip() {
    cat -pp ~/.ssh/id_rsa.pub | xclip -sel clip
}
