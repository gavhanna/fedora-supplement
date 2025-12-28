#!/bin/bash

# Installs packages listed in the dnf-packages.txt file.

set -e # Exit immediately if a command exits with a non-zero status.
echo " "
echo "Installing starship..."

curl -sS https://starship.rs/install.sh | sh

echo "Starship installed successfully."
echo " "
echo "Setting gruvbox starthip theme..."
starship preset gruvbox-rainbow -o ~/.config/starship.toml
echo "Starship theme set successfully."
