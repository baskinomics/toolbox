#!/bin/bash

# Logger
source log.sh

# Initialization scirpt
source init.sh

# Tools script
source tools.sh

# The download directory
downloadDir="$HOME/downloads"

# Business logic
log "Updating package cache and upgrading packages..."
updateAndUpgrade
installPackages

log "Installing tools..."
cd ${downloadDir}
installBatTool
installLsdTool