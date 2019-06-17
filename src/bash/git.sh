#!/bin/bash

# Sets various git config key-value pairs
function configure_git ()
{
    ${USERNAME} git config --global user.name "Sean Baskin"
    ${USERNAME} git config --global user.email "seanbaskin@gmail.com"
    ${USERNAME} git config --global core.editor vim
}
