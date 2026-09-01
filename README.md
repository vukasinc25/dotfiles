# Dotfiles

Personal configuration files for my development environment.

## Included

- Ghostty
- Neovim with LazyVim
- tmux
- Zsh with Oh My Zsh and Powerlevel10k

The configuration is organized for use with GNU Stow.

## Usage

Clone the repository and install the package you want:

```bash
stow --target="$HOME" zsh tmux ghostty nvim
```

Each package mirrors its destination under the home directory.

## Notes

- Neovim plugins, Mason tools, caches, and state are not tracked.
- SSH keys, tokens, `.env` files, shell history, and other secrets are ignored.
- Some settings may need small platform-specific changes between Ubuntu and macOS.
