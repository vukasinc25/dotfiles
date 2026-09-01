# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# =====================================================
# PATH
# =====================================================

export PATH="$HOME/.local/bin:$PATH"


# =====================================================
# Oh My Zsh
# =====================================================

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# =====================================================
# Starship prompt
# =====================================================

#eval "$(starship init zsh)"

# =====================================================
# zoxide - smarter cd
# =====================================================

eval "$(zoxide init zsh)"


# =====================================================
# fzf - fuzzy finder
# =====================================================

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# =====================================================
# Node Version Manager
# =====================================================

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# =====================================================
# Editor
# =====================================================

export EDITOR="nvim"
export VISUAL="nvim"

# Neovim
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
alias v="nvim"

# =====================================================
# Aliases
# =====================================================

# Navigation
alias ll="ls -lah"
alias la="ls -A"
alias ..="cd .."
alias ...="cd ../.."
alias proj="cd ~/Projects"

# Better CLI tools
if (( $+commands[batcat] )); then
  alias cat="batcat"
elif (( $+commands[bat] )); then
  alias cat="bat"
fi

if (( $+commands[fdfind] )); then
  alias fd="fdfind"
fi

# Git
alias gs="git status"
alias gd="git diff"
alias gl="git log --oneline --graph --decorate"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"

# Docker
alias d="docker"
alias dc="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dlog="docker logs"

# System/network
alias c="clear"
alias ports="ss -tulpn"
alias myip="curl ifconfig.me"

# Safety
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

alias notes="nvim ~/Notes/linux-cheatsheet.md"

# =====================================================
# End
# =====================================================

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
