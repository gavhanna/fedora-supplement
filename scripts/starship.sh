#!/bin/bash

# Installs packages listed in the dnf-packages.txt file.

set -e # Exit immediately if a command exits with a non-zero status.
echo " "
if ! command -v starship &> /dev/null; then
    echo "Installing starship..."
    curl -sS https://starship.rs/install.sh | sh -s -- -y
    echo "Starship installed successfully."
else
    echo "Starship is already installed."
fi
echo " "
echo "Setting gruvbox starthip theme..."
starship preset gruvbox-rainbow -o ~/.config/starship.toml
echo "Starship theme set successfully."

# Add init to bashrc if not present
if ! grep -q "starship init bash" ~/.bashrc; then
    echo " "
    echo "Adding starship init to ~/.bashrc..."
    echo 'eval "$(starship init bash)"' >> ~/.bashrc
else
    echo "Starship init already in ~/.bashrc."
fi
