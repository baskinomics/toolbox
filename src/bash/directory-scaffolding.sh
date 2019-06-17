#!/bin/bash

# Remove user home default directories
function remove_default_user_dirs ()
{
    rm -rf ${HOME}/Downloads
    rm -rf ${HOME}/Documents
}

# Scaffold personal directory structure
function scaffold_user_dirs () {
    # Create git parent and children directories
    mkdir ${HOME}/git
    mkdir ${HOME}/git/third-party

    # Create development parent and children directories
    mkdir ${HOME}/development
    mkdir ${HOME}/development/ide
    mkdir ${HOME}/development/languages
    mkdir ${HOME}/development/temp
    mkdir ${HOME}/development/tools

    # Create docs parent and children directories
    mkdir ${HOME}/docs
    mkdir ${HOME}/docs/finance
    mkdir ${HOME}/docs/health
    mkdir ${HOME}/docs/library
    mkdir ${HOME}/docs/personal
    mkdir ${HOME}/docs/professional

    # Create other ancillary user directories
    mkdir ${HOME}/downloads
}