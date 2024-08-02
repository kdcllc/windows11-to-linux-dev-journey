#!/bin/bash

#
#
# USAGE: ./dotnet-install.sh 8.0.303
#
#

# Check if a version parameter is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <dotnet-version>"
  exit 1
fi

DOTNET_VERSION=$1

# Check if the $HOME/dotnet folder exists and delete it if it does
if [ -d "$HOME/dotnet" ]; then
  rm -rf "$HOME/dotnet"
fi

# Download the .NET Core SDK
wget https://dotnetcli.azureedge.net/dotnet/Sdk/${DOTNET_VERSION}/dotnet-sdk-${DOTNET_VERSION}-linux-x64.tar.gz

# Create the $HOME/dotnet folder and extract the .NET Core SDK to it
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-${DOTNET_VERSION}-linux-x64.tar.gz -C $HOME/dotnet

# export DOTNET_ROOT=$HOME/dotnet
# export PATH=$PATH:$HOME/dotnet

echo "export DOTNET_ROOT=\$HOME/dotnet" >> ~/.bashrc && echo "export PATH=\$PATH:\$HOME/dotnet" >> ~/.bashrc && echo "export DOTNET_CLI_TELEMETRY_OPTOUT=true" >> ~/.bashrc

# Reload the .bashrc file
source ~/.bashrc

# Clean up the downloaded tar file
rm dotnet-sdk-${DOTNET_VERSION}-linux-x64.tar.gz

# Verify the installation
dotnet --list-sdks
dotnet --version