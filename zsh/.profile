. "$HOME/.cargo/env"
echo "Launching byobu from .profile"
_byobu_sourced=1 . `which byobu-launch` 2>/dev/null || true
