#!/bin/bash

# Logger
source log.bash

# Temporary download directory
DOWNLOAD_DIR='/home/zoo/development/temp'
GO_VERSION='go1.12.4'
ARCH='linux-amd64'

# Download the official Go binary
log "Downloading Go binary archive to $DOWNLOAD_DIR/$GO_VERSION.$ARCH.tar.gz"
curl --silent --output "$DOWNLOAD_DIR/$GO_VERSION.$ARCH.tar.gz" https://dl.google.com/go/go1.12.4.linux-amd64.tar.gz

# Extract the binary
log "Extracting Go binary archive to /user/local/go"
tar -C /usr/local -xzf /home/zoo/development/temp/go1.12.4.linux-amd64.tar.gz

# Cleanup
log "Removing binary archive"
rm $DOWNLOAD_DIR/$GO_VERSION.$ARCH.tar.gz