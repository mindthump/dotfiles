[[ -e ~/.umt/umt-profile ]] && source ~/.umt/umt-profile
. "$HOME/.cargo/env"
echo "Launching byobu from .bash_profile"
_byobu_sourced=1 . `which byobu-launch` 2>/dev/null || true
