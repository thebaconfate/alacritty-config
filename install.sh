#!/usr/bin/env bash

set -e

# Get the absolute path of where this script (and your alacritty configs) lives
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Setting up Alacritty config"

# Ensure target config directory exists
mkdir -p ~/.config/alacritty

# Symlink individual configuration files
ln -sfn "$DOTFILES_DIR/alacritty.toml" ~/.config/alacritty/alacritty.toml
ln -sfn "$DOTFILES_DIR/alacritty/keybindings.toml" ~/.config/alacritty/keybindings.toml
