#!/bin/bash
systemctl --user disable --now one-nation-bg-shuffle.service one-nation-bg-shuffle.timer 2>/dev/null || true
rm -f "$HOME/.local/bin/one-nation-bg-shuffle" \
  "$HOME/.config/systemd/user/one-nation-bg-shuffle.service" \
  "$HOME/.config/systemd/user/one-nation-bg-shuffle.timer"
systemctl --user daemon-reload
echo "Background shuffle removed."
