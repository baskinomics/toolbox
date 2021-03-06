#!/bin/bash

# Logger
source log.sh

# Initialization scirpt
source init.sh

# Git functions
source git.sh

# User home directory functions
source directory-scaffolding.sh

# The download directory
downloadDir="$HOME/downloads"

# Update and upgrade apt packages
log "Updating package cache and upgrading packages..."
update_and_upgrade
install_packages

# Git
log "Configuring git..."
configure_git

# Directory Scaffolding
log "Setting up user home directory..."
remove_default_user_dirs
scaffold_user_dirs

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