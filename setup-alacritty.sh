#!/usr/bin/env bash
set -e

CONFIG_DIR="$HOME/.config/alacritty"
DOTFILES_DIR="$HOME/.dotfiles/alacritty-config"

mkdir -p "$CONFIG_DIR"

files=(
  vscode-dark.toml
  keybindings.toml
  alacritty.toml
)

for file in "${files[@]}"; do
  ln -sf "$DOTFILES_DIR/$file" "$CONFIG_DIR/$file"
done
