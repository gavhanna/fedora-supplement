#!/bin/bash

# This script loads the custom keybindings from the dconf file.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
DCONF_FILE="$SCRIPT_DIR/../packages/keybindings.dconf"

echo "Loading custom keybindings..."
dconf load / < "$DCONF_FILE"
echo "Keybindings loaded."
