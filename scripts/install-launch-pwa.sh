#!/bin/bash

# Installs the launch-pwa script.

set -e

echo " "
echo "Installing launch-pwa script..."

# Create ~/.local/bin if it doesn't exist
mkdir -p ~/.local/bin

# Copy the script to ~/.local/bin
cp scripts/launch-pwa ~/.local/bin/

# Make the script executable
chmod +x ~/.local/bin/launch-pwa

echo "launch-pwa script installed successfully."
