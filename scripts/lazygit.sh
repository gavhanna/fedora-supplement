#!/bin/bash

set -e

echo " "
echo "Installing Lazygit..."
sudo dnf copr enable -y dejan/lazygit
sudo dnf install -y lazygit

echo "Lazygit installed successfully."
