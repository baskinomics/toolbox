#!/bin/bash

# Remove user home default directories
rm -rf ${HOME}/Downloads
rm -rf ${HOME}/Documents

# Scaffold personal directory structure
mkdir ${HOME}/git
mkdir ${HOME}/git/third-party
mkdir ${HOME}/development
mkdir ${HOME}/development/ide
mkdir ${HOME}/development/languages
mkdir ${HOME}/development/temp
mkdir ${HOME}/development/tools
mkdir ${HOME}/downloads
mkdir ${HOME}/docs
mkdir ${HOME}/docs/finance
mkdir ${HOME}/docs/health
mkdir ${HOME}/docs/library
mkdir ${HOME}/docs/personal
mkdir ${HOME}/docs/professional