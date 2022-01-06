#!/bin/bash

# set -x

# All non-machine specific zsh stuff.
# This also needs to work for Linux metal, VMs, containers, etc. that use zsh.

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

HISTFILE="${HOME}/.zsh_history"
HISTSIZE=1000
export SAVEHIST=1000
setopt SHARE_HISTORY

# User configuration

export PATH="/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Use vim for less, etc.
export EDITOR=/usr/bin/vim

# Chop lines and raw (for color)
# export LESS="-S -r"

# Execution time stamp shown in the history command output.
export HIST_STAMPS="mm/dd/yyyy"

# ANTIGEN / OH-MY-ZSH
export ZSH_THEME="ejc"
ZSH="${HOME}/.oh-my-zsh"
source "${HOME}/.antigen.zsh"
antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle docker
antigen bundle vagrant
antigen bundle vagrant-prompt
antigen bundle docker-compose
antigen bundle akarzim/zsh-docker-aliases
antigen bundle common-aliases
antigen bundle command-not-found
antigen bundle history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle scd
antigen bundle sudo
antigen bundle aws
antigen bundle oc
antigen bundle kubectl
antigen apply
source "${ZSH}/oh-my-zsh.sh"

# ssh
export SSH_KEY_PATH="${HOME}/.ssh/rsa_id"

alias ydl="youtube-dl --no-check-certificate --ignore-errors"

# docker
export DOCKER_BUILDKIT=1
alias dksum="docker image ls -a; docker container ls -a; docker volume ls; docker network "
alias dkCla="docker container ls -a"
alias dksum="docker image ls -a; echo; docker container ls -a; echo; docker volume ls; echo; docker network ls"
alias dkCl="docker container list --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Command}}\t{{.Status}}'"
alias dlCla="docker container list -a"

agc ()
{
    /usr/local/bin/ag --color $@ | less -S
}
alias now="date -u +%Y%m%d_%H%M%SZ"

lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}

if [[ -e "${HOME}/.iterm2_shell_integration.zsh" ]]; then
  source "${HOME}/.iterm2_shell_integration.zsh"
fi

# nnn cd on quit -- use 'n' to start
export NNN_BMS="h:~;r:~/repos"
n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, either remove the "export" as in:
    #    NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    #    (or, to a custom path: NNN_TMPFILE=/tmp/.lastd)
    # or, export NNN_TMPFILE after nnn invocation
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn -R "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

# vi mode in line editor
bindkey -v

# Put machine-specific customizations in a ".zshrc.<machine_name>" file
if [[ -f "${HOME}/.zshrc.$(uname -n)" ]]; then
  source "${HOME}/.zshrc.$(uname -n)"
fi
[[ -e ~/.umt/umt-profile ]] && emulate sh -c 'source $HOME/.umt/umt-profile'
