#!/bin/bash
#
# Enable: chmod +x install_docker_compose.sh
#
# USAGE: ./install_docker_compose.sh v2.29.1
#

# Check if version argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <version>"
  exit 1
fi

# Assign the version argument to a variable
docker_v=$1

# Download docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/${docker_v}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Enable execute permissions
sudo chmod +x /usr/local/bin/docker-compose

# Verify installation
docker-compose --version