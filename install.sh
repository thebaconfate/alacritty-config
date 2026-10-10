#!/usr/bin/env bash
set -e

CONFIG_DIR="$HOME/.config/alacritty"
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Setting up Alacritty config"

mkdir -p "$CONFIG_DIR"

files=(
  keybindings.toml
  alacritty.toml
)

for file in "${files[@]}"; do
  ln -sf "$DOTFILES_DIR/$file" "$CONFIG_DIR/$file"
done
