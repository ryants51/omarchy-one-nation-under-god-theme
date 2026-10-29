#!/bin/bash
# Show a random background each time you log in and each time the machine
# wakes from sleep, only while a One Nation Under God theme is active.
# Undo with ./uninstall.sh.
set -e
cd "$(dirname "$0")"
install -Dm755 one-nation-bg-shuffle "$HOME/.local/bin/one-nation-bg-shuffle"
install -Dm644 one-nation-bg-shuffle.service -t "$HOME/.config/systemd/user/"
systemctl --user daemon-reload
systemctl --user enable --now one-nation-bg-shuffle.service
echo "Background shuffle enabled: a new random background at every login and wake."
