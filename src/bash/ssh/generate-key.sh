#!/bin/bash

function generate-ssh-key() {
    ssh-keygen -t rsa -b 4096
    cat -pp ~/.ssh/id_rsa.pub | xclip -sel clip
}

function generate-gpg-key() {

}