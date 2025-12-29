#!/bin/bash

# This script updates the keybindings in the packages directory
# with the current system keybindings.

set -e

echo " "
echo "Updating keybindings..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
DCONF_FILE="$SCRIPT_DIR/../packages/keybindings.dconf"

# Dump the current keybindings
dconf dump /org/gnome/desktop/wm/keybindings/ > "$DCONF_FILE"
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ >> "$DCONF_FILE"

echo "Keybindings updated successfully."
