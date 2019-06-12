# Use official Ubuntu image as parent.
FROM ubuntu:19.04

# Maintainer information.
LABEL maintainer="Sean Baskin <seanbaskin@gmail.com>"

# Create the user zoo and associated permissions.
RUN /bin/bash -c 'adduser zoo'

# Set zoo as the user to run all following RUN, CMD, and ENTRYPOINT instructions.
USER zoo

# Default container command.
CMD [ "/bin/bash --login" ]