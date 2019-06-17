#!/bin/bash

# Logger
source log.sh

# Initialization scirpt
source init.sh

# Git functions
source git.sh

# Tools script
source tools.sh

# The download directory
downloadDir="$HOME/downloads"

# Update and upgrade apt packages
log "Updating package cache and upgrading packages..."
updateAndUpgrade
installPackages

# Git
configure_git

# Directory Scaffolding

# Tools
log "Installing tools..."
cd ${downloadDir}
installBatTool
installLsdTool

# Fonts
# Bashit
# Java
# Rust
# Go
# JavaScript
# Python
# IntelliJ
# Atom
# VSCode