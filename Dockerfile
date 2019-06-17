# Use official Ubuntu image as parent.
FROM ubuntu:19.04

# Maintainer information.
LABEL maintainer="Sean Baskin <seanbaskin@gmail.com>"

# Create the user zoo and associated permissions.
RUN adduser zoo
RUN usermod -aG sudo zoo

# Update apt cache and upgrade packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y sudo

# Set zoo as the user to run all following RUN, CMD, and ENTRYPOINT instructions.
USER zoo

# Add the source directory for now.
# In the future this will be the build artifact of a build process.
ADD src/ /home/zoo/src

# Set the working directory
WORKDIR /home/zoo/src

# Default container command.
CMD [ "/bin/bash" ]