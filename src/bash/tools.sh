#!/bin/bash

# Logger
source log.bash

# Variable declaration
downloadDir="$HOME/downloads"
batVersion="0.11.0"
batPackage="bat_${batVersion}_amd64.deb"
batReleaseUrl="https://github.com/sharkdp/bat/releases/download/v${batVersion}/${batPackage}"

# Name:
#   installBatTool()
# Description:
#   Install the bat tool (see: https://github.com/sharkdp/bat).
#   It is a cat(1) clone with additional features and functionality.
# Example:
#   installBatTool
function installBatTool ()
{
    # Navigate to the downloads directory
    log "Installing bat package"
    cd $downloadDir

    # Download the release package
    log "PWD: ${PWD}"
    log "Downloading $batReleaseUrl"
    curl -L -O $batReleaseUrl

    # Install the release package
    log "Installing bat package"
    dpkg -i ${batPackage}

    # Cleanup
    log "Successfully installed bat"
    log "Removing package file"
    rm ${batPackage}
}

installBatTool