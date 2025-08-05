#!/bin/bash

if ! command -v zsh >/dev/null 2>&1; then
    echo "Zsh is not installed. Installing Zsh..."
    sudo apt update
    sudo apt install -y zsh
fi

export ZSH="$HOME/.oh-my-zsh"

zsh

chsh -a $(which zsh)

echo "Zsh has been installed and set as the default shell."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Oh My Zsh has been installed."

echo "Do you want to add basic plugins? (y/n)"
read -r add_plugins

if [[ "$add_plugins" == "y" ]]; then
    echo "Adding basic plugins..."
    echo "plugins=(git vscode aliases)" >> "$ZSH/.zshrc"
    echo "Basic plugins added."
else
    echo "No plugins added."
fi

echo "Please restart your session."