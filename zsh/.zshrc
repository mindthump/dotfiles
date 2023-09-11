# set -x

# All non-machine-specific zsh stuff.
# This also needs to work for Linux metal, VMs, containers, etc. that use zsh.
# Path to the oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
export ZSH_THEME="ejc"
plugins=(aliases git pip vagrant vagrant-prompt common-aliases httpie
  command-not-found history-substring-search scd sudo aws kubectl
  copypath minikube brew vi-mode ag gnu-utils zsh-docker-aliases)
source "${ZSH}/oh-my-zsh.sh"

HISTFILE="${HOME}/.zsh_history"
HISTSIZE=1000
export SAVEHIST=1000
setopt SHARE_HISTORY

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/ed/.rd/bin"
export EDITOR=/usr/local/bin/nvim

# Chop lines and raw (for color)
# export LESS="-S -r"

# Execution time stamp shown in the history command output.
export HIST_STAMPS="mm/dd/yyyy"

# ssh
export SSH_KEY_PATH="${HOME}/.ssh/rsa_id"

# docker/kubernetes
export DOCKER_BUILDKIT=1
export KUBECONFIG=/Users/ed/.kube/config:/Users/ed/repos/vagrant-kubeadm-kubernetes/configs/config

# vcluster
autoload -U compinit; compinit

# My own aliases
source "${HOME}/.dotfiles/zsh/.aliases"
# Machine-specific customizations in a ".zshrc.<machine_name>" file
[[ -f "${HOME}/.zshrc.$(uname -n)" ]] && source "${HOME}/.zshrc.$(uname -n)"
# For special circumstances, like a particular kind of container
[[ -f "${HOME}/.zshrc.extra" ]] && source "${HOME}/.zshrc.extra"

[[ -e "${HOME}/.iterm2_shell_integration.zsh" ]] && source "${HOME}/.iterm2_shell_integration.zsh"

# PATH and shell completion for the Google Cloud SDK.
# if [ -f '${HOME}/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ed/google-cloud-sdk/path.zsh.inc'; fi
# if [ -f '${HOME}/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ed/google-cloud-sdk/completion.zsh.inc'; fi

# vi mode in line editor
bindkey -v

# Automatically start byobu
_byobu_sourced=1 . /usr/local/bin/byobu-launch 2>/dev/null || true
