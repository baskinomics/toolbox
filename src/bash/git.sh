#!/bin/bash

# Sets various git config key-value pairs
function configure_git ()
{
    git config --global user.name "Sean Baskin"
    git config --global user.email "seanbaskin@gmail.com"
    git config --global core.editor vim
}
