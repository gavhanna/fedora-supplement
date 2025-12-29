#!/bin/bash

# Installs Claude Code CLI.

set -e

if ! command -v claude &> /dev/null; then
    echo " "
    echo "Installing Claude Code..."
    curl -fsSL https://claude.ai/install.sh | bash
    echo "Claude Code installed successfully."
else
    echo "Claude Code is already installed."
fi
