# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ejc"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# User configuration

export PATH="/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

source ~/.dotfiles/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle docker
antigen bundle docker-compose
antigen bundle docker-machine
antigen bundle akarzim/zsh-docker-aliases
antigen bundle kubectl
antigen bundle common-aliases
antigen bundle command-not-found
antigen bundle history-substring-search

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# OVERRIDES antigen bundles!
alias ydl="youtube-dl --no-check-certificate"
alias h="omz_history|tac|less"
alias dksum="docker image ls -a; docker container ls -a; docker volume ls;docker network ls"
alias gff="git flow feature"
alias gffs="git flow feature start"
alias gfff="git flow feature finish"
alias gffd="git flow feature diff"
alias gffco="git flow feature checkout"
alias gffr="git flow feature rebase -i"
alias gffp="git flow feature publish"

alias gg="gcloud"
alias ggc="gcloud compute"
alias ggcn="gcloud compute networks"
alias ggC="gcloud container"

unalias rm

# Use th enew buildkit
export DOCKER_BUILDKIT=1

# Customize which directories to exclude
function pyfind { find . -type d \( -path ./.git -o -path ./.idea  \) -prune -o -type f -name '*.py' -exec grep -Hi $1 {} \; }

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

hash -d mock=/Users/ed/repos/MockExample
hash -d paf=/Users/ed/repos/python_app_framework

# vi mode in line editor
bindkey -v

# source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
# source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc

# LOCAL CUSTOMIZATION HERE: Python venv, repo, etc.
. /Users/ed/app_fwk_venv/bin/activate

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
