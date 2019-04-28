#!/bin/bash

DOWNLOAD_DIR='/home/zoo/development/temp'

# Set version
# TODO

# Download the official Go binary
printf "Downloading Go binary archive to $DOWNLOAD_DIR/go1.12.4.linux-amd64.tar.gz\n"
curl --output "$DOWNLOAD_DIR/go1.12.4.linux-amd64.tar.gz" https://dl.google.com/go/go1.12.4.linux-amd64.tar.gz

# Extract the binary
printf "Extracting Go binary archive to /user/local/go\n"
tar -C /usr/local -xzf /home/zoo/development/temp/go1.12.4.linux-amd64.tar.gz

# Cleanup
printf "Removing binary archive\n"
rm /home/zoo/development/temp/go1.12.4.linux-amd64.tar.gz