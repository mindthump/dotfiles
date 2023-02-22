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

export PATH="/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"

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
antigen bundle kubectl
antigen bundle helm
antigen bundle copypath
antigen bundle minikube
antigen bundle brew
antigen bundle vi-mode
antigen bundle ag
antigen bundle gnu-utils
antigen bundle macos
antigen apply
source "${ZSH}/oh-my-zsh.sh"

# ssh
export SSH_KEY_PATH="${HOME}/.ssh/rsa_id"

# docker
export DOCKER_BUILDKIT=1

# Put machine-specific customizations in a ".zshrc.<machine_name>" file
# First, am I in a container?
if [ -f /.dockerenv ]; then
  source "${HOME}/.zshrc.docker"
else
  if [[ -f "${HOME}/.zshrc.$(uname -n)" ]]; then
    source "${HOME}/.zshrc.$(uname -n)"
  fi
fi


if [[ -e "${HOME}/.iterm2_shell_integration.zsh" ]]; then
  source "${HOME}/.iterm2_shell_integration.zsh"
fi

# Use the utility not alias
unalias fd
#
# vi mode in line editor
bindkey -v

# Alieses should go here for neatness
source ~/.aliases

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ed/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ed/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ed/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ed/google-cloud-sdk/completion.zsh.inc'; fi

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/ed/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Automatically start byobu
_byobu_sourced=1 . /usr/local/bin/byobu-launch 2>/dev/null || true
