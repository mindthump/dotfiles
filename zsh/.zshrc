# Basic PATH.
export PATH="/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# Use vim for less, etc.
export EDITOR=/usr/bin/vim

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

# Personal aliases
alias ydl="youtube-dl --no-check-certificate"
alias h="omz_history|tac|less"
alias dksum="docker image ls -a; docker container ls -a; docker volume ls; docker network ls"
alias gff="git flow feature"
alias gffs="git flow feature start"
alias gfff="git flow feature finish"
alias gffd="git flow feature diff"
alias gffco="git flow feature checkout"
alias gffr="git flow feature rebase -i"
alias gffp="git flow feature publish"

# Use the new buildkit
export DOCKER_BUILDKIT=1

# Customize which directories to exclude
function pyfind { find . -type d \( -path ./.git -o -path ./.idea  \) -prune -o -type f -name '*.py' -exec grep -Hi $1 {} \; }

# Someday, separate out Mac-specific
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# vi mode in line editor
bindkey -v

_byobu_sourced=1 . /usr/bin/byobu-launch 2>/dev/null || true

# LOCAL CUSTOMIZATION HERE: Python venv, repo, etc.
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
