#!/bin/bash

# Install SDKMan!
curl -s "https://get.sdkman.io" | bash

# Source
source "/home/zoo/.sdkman/bin/sdkman-init.sh"

# Install Java
sdk install java 12.0.1-open

# Set Java 12 as default
sdk default java 12.0.1-open

# Install Maven
sdk install maven

# Install Gradle
sdk install gradle
