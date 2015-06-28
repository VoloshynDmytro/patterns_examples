FROM phusion/passenger-ruby20
MAINTAINER Voloshyn Dmytro <voloshyn@gmail.com>
# Set correct environment variables.

# Local directory with project source
ENV DOCK_LOCALAPP_SRC=patterns_examples_app
# Directory in container for all project files
ENV DOCHOME /root
# Directory in container for project source files
ENV DOC_APP_FOLDER=/root/patterns_examples
# Create application subdirectories
WORKDIR $DOCHOME
# Copy application source code to SRCDIR
COPY $DOCK_LOCALAPP_SRC $DOC_APP_FOLDER

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
