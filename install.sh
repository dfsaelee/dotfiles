#!/usr/bin/env bash
set -e

# update 
sudo apt update && sudo apt upgrade -y

# install nvim
echo "Installing packages..."
sudo apt install -y neovim git curl build-essential

# install Oh My Zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "Oh My Zsh already installed."
fi

# set Zsh as default 
chsh -s "$(which zsh)" || echo "shell not found"

# link config 
mkdir -p ~/.config

ln -sf "$(pwd)/.config/nvim" ~/.config/nvim

echo "Done!"

