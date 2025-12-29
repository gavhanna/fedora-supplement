#!/bin/bash

# Installs Ghostty terminal.

set -e

echo " "
echo "Enabling COPR repository for Ghostty and installing..."

sudo dnf copr enable -y scottames/ghostty
sudo dnf install -y ghostty

echo "Ghostty installed successfully."
