#!/bin/bash

# Installs NVM, Node.js (LTS), and specified global npm packages.

set -e

echo " "
echo "Installing NVM (Node Version Manager)..."

# Download and run the nvm installation script
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Source nvm to make it available in the current script
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Verify nvm installation
if ! command -v nvm &> /dev/null
then
    echo "nvm could not be found after installation. Please check your shell configuration."
    exit 1
fi


echo "Installing latest LTS version of Node.js..."
nvm install --lts

# Set the LTS version as the default
nvm alias default 'lts/*'

echo "Node.js LTS installed."
node -v
npm -v

echo "Installing Gemini CLI via npm..."
npm install -g @google/gemini-cli

echo "NVM, Node.js, and Gemini CLI installed successfully."
echo "Please restart your terminal session for NVM to be fully available."
