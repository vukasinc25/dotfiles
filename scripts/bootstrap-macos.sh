#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is required. Install it first from https://brew.sh"
  exit 1
fi

brew bundle --file="$DOTFILES_DIR/Brewfile"

if ! command -v stow >/dev/null 2>&1; then
  echo "GNU Stow was not installed."
  exit 1
fi

stow --no-folding --target="$HOME" --dir="$DOTFILES_DIR" zsh tmux ghostty nvim

if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

echo
echo "Done."
echo "Open a new terminal, then run:"
echo "  tmux source-file ~/.tmux.conf"
echo "Inside tmux, press your tmux prefix followed by I to install TPM plugins."
echo "Start Neovim with: vim"
