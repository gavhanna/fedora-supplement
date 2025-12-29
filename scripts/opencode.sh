#!/bin/bash

set -e

if [ -x "$HOME/.opencode/bin/opencode" ]; then
    echo "Opencode is already installed."
else
    echo " "
    echo "Installing Opencode.."
    curl -fsSL https://opencode.ai/install | bash
    echo "Opencode installed successfully."
fi
