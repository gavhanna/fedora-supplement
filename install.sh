#!/bin/bash

# Main installation script for Fedora Workstation.

set -e # Exit immediately if a command exits with a non-zero status.

echo "Starting Fedora supplementary installation..."
echo "This script will install and configure software on your system."
echo "You will be prompted for your password for 'sudo' commands."
echo " "

# Get the directory of the currently executing script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

# --- Execute Installation Scripts ---

bash "$SCRIPT_DIR/scripts/dnf.sh"
bash "$SCRIPT_DIR/scripts/vscode.sh"
bash "$SCRIPT_DIR/scripts/ghostty.sh"
bash "$SCRIPT_DIR/scripts/docker.sh"
bash "$SCRIPT_DIR/scripts/nvm.sh"
bash "$SCRIPT_DIR/scripts/starship.sh"
bash "$SCRIPT_DIR/scripts/lazygit.sh"
bash "$SCRIPT_DIR/scripts/opencode.sh"
bash "$SCRIPT_DIR/scripts/keybindings.sh"
bash "$SCRIPT_DIR/scripts/install-launch-pwa.sh"
# --- Finalization ---

echo " "
echo "-----------------------------------------------------"
echo " "
echo "All scripts executed."
echo " "
echo "Important Notes:"
echo " - You may need to log out and log back in for Docker group changes to apply."
echo " - A new terminal session is required for NVM and Node.js to be available."
echo " - Review the output for any errors that may have occurred."
echo " "
echo "Installation complete."
