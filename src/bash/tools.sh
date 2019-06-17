#!/bin/bash

# Logger
source log.bash

# bat version
batVersion="0.11.0"

# bat package
batPackage="bat_${batVersion}_amd64.deb"

# bat release URL
batReleaseUrl="https://github.com/sharkdp/bat/releases/download/v${batVersion}/${batPackage}"

# lsd version
lsdVersion="0.15.1"

# lsd package
lsdPackage="lsd_${lsdVersion}_amd64.deb"

lsdReleaseUrl="https://github.com/Peltoche/lsd/releases/download/${lsdVersion}/${lsdPackage}"

# Name:
#   installBatTool()
# Description:
#   Install the bat tool (see: https://github.com/sharkdp/bat).
#   It is a cat(1) clone with additional features and functionality.
# Example:
#   installBatTool
function installBatTool ()
{
    # Download the release package
    log "Downloading $batReleaseUrl"
    curl -L -O $batReleaseUrl

    # Install the release package
    log "Installing bat package"
    dpkg -i ${batPackage}

    # Cleanup
    log "Removing package file"
    rm ${batPackage}
}

# Name:
#   installLsdTool()
# Description:
#   Install the lsd tool (see: https://github.com/Peltoche/lsd).
#   lsd is a next generation version of ls.
# Example:
#   installBatTool
function installLsdTool ()
{
    # Download the release package
    log "Downloading ${lsdReleaseUrl}"
    curl -L -O ${lsdReleaseUrl}

    # Install the release package
    log "Installing lsd package"
    dpkg -i ${lsdPackage}

    # Cleanup
    log "Removing package file"
    rm ${lsdPackage}
}