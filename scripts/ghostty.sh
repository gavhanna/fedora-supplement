#!/bin/bash

# Installs Ghostty terminal.

set -e

echo " "
echo "Enabling COPR repository for lazygit and installing..."

dnf copr enable scottames/ghostty
dnf install -y ghostty

echo "Lazygit installed successfully."
