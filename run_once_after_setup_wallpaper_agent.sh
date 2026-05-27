#!/usr/bin/env sh
# Register the wallpaper LaunchAgent.
# chezmoi runs this once (or when the script content changes).

plist="$HOME/Library/LaunchAgents/com.akrisanov.wallpaper.plist"

if [ ! -f "$plist" ]; then
  echo "wallpaper agent: plist not found at $plist, skipping"
  exit 0
fi

# Unload first in case it was previously loaded
launchctl unload "$plist" 2>/dev/null || true
launchctl load -w "$plist"
echo "wallpaper agent: loaded $plist"
