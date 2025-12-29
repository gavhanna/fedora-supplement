#!/bin/bash

# This script updates the keybindings in the packages directory
# with the current system keybindings.

set -e

echo " "
echo "Updating keybindings..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
DCONF_FILE="$SCRIPT_DIR/../packages/keybindings.dconf"

# Dump and format the keybindings
{
    echo "[org/gnome/desktop/wm/keybindings]"
    dconf dump /org/gnome/desktop/wm/keybindings/ | grep -v "^\[/\]$" || true
    
    echo ""
    echo "[org/gnome/settings-daemon/plugins/media-keys]"
    dconf dump /org/gnome/settings-daemon/plugins/media-keys/ | grep -v "^\[/\]$" | sed 's/^\[custom-keybindings/\[org\/gnome\/settings-daemon\/plugins\/media-keys\/custom-keybindings/g' || true

} > "$DCONF_FILE"

echo "Keybindings updated successfully."