#!/bin/bash

# Installs Docker Engine.

set -e

echo " "
echo "Setting up Docker repository and installing..."

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Starting and enabling Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

echo "Adding current user to the 'docker' group..."
sudo usermod -aG docker "$USER"

echo " "
echo "Docker installed successfully."
echo "You may need to log out and log back in for the group changes to take effect."
