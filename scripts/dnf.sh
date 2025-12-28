#!/bin/bash

# Installs packages listed in the dnf-packages.txt file.

set -e # Exit immediately if a command exits with a non-zero status.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
PACKAGE_FILE="$SCRIPT_DIR/../packages/dnf-packages.txt"

echo " "
echo "Installing DNF packages..."

echo "Ensuring 'dnf-plugins-core' is installed..."
sudo dnf install -y dnf-plugins-core


if [ ! -f "$PACKAGE_FILE" ]; then
    echo "Error: Package file not found at $PACKAGE_FILE"
    exit 1
fi

# Read packages from file, filtering out comments and empty lines
mapfile -t PACKAGES < <(grep -vE '^\s*#|^\s*$' "$PACKAGE_FILE")

if [ ${#PACKAGES[@]} -eq 0 ]; then
    echo "No packages to install from $PACKAGE_FILE."
    exit 0
fi

echo "The following packages will be installed:"
printf " - %s\n" "${PACKAGES[@]}"
echo " "

sudo dnf install -y "${PACKAGES[@]}"

echo "DNF packages installed successfully."
