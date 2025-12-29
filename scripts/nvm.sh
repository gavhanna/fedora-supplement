#!/bin/bash

# Installs NVM, Node.js (LTS), and specified global npm packages.

set -e

echo " "
echo "Checking NVM installation..."

export NVM_DIR="$HOME/.nvm"

# Only install NVM if not already present
if [ -d "$NVM_DIR" ]; then
    echo "NVM is already installed in $NVM_DIR."
else
    echo "Installing NVM (Node Version Manager)..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

# Source nvm to make it available in the current script
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Verify nvm installation
if ! command -v nvm &> /dev/null
then
    echo "nvm could not be found. Please check your shell configuration."
    exit 1
fi


echo "Checking Node.js LTS version..."
nvm install --lts

# Set the LTS version as the default
nvm alias default 'lts/*'

echo "Node.js LTS installed."
node -v
npm -v

echo "Checking Gemini CLI..."
if npm list -g @google/gemini-cli --depth=0 >/dev/null 2>&1; then
    echo "Gemini CLI is already installed."
else
    echo "Installing Gemini CLI via npm..."
    npm install -g @google/gemini-cli
fi

echo "NVM, Node.js, and Gemini CLI setup complete."
echo "Please restart your terminal session for NVM to be fully available."
