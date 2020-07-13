# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt SHARE_HISTORY

# User configuration

export PATH="/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

# ANTIGEN / OH-MY-ZSH
ZSH_THEME="ejc"
ZSH=$HOME/.oh-my-zsh
source ~/.antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle docker
antigen bundle vagrant
antigen bundle docker-compose
antigen bundle akarzim/zsh-docker-aliases
antigen bundle common-aliases
antigen bundle command-not-found
antigen bundle history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias ydl="youtube-dl --no-check-certificate"
alias dksum="docker image ls -a; docker container ls -a; docker volume ls;docker network ls"
alias gff="git flow feature"
alias gffs="git flow feature start"
alias gfff="git flow feature finish"
alias gffd="git flow feature diff"
alias gffco="git flow feature checkout"
alias gffr="git flow feature rebase -i"
alias gffp="git flow feature publish"

export DOCKER_BUILDKIT=1

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# vi mode in line editor
bindkey -v

# source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
# source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc

# LOCAL CUSTOMIZATION HERE: Python venv, repo, etc.
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
