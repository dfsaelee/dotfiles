#!/usr/bin/env bash
set -e

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing packages..."
sudo apt install -y neovim git curl build-essential

echo "Linking config files..."
# Create config dir if missing
mkdir -p ~/.config

# Link nvim config
ln -sf "$(pwd)/.config/nvim" ~/.config/nvim

echo "Done!"

