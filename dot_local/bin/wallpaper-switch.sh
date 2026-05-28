#!/usr/bin/env sh
# Switches wallpaper based on current macOS appearance.
# Triggered by LaunchAgent watching GlobalPreferences changes.
#
# Place wallpapers at:
#   ~/.local/share/wallpapers/dark.jpeg
#   ~/.local/share/wallpapers/light.jpeg

WALLPAPERS="$HOME/.local/share/wallpapers"
mode=$(defaults read -g AppleInterfaceStyle 2>/dev/null)

if [ "$mode" = "Dark" ]; then
  img="$WALLPAPERS/dark.jpeg"
else
  img="$WALLPAPERS/light.jpg"
fi

if [ ! -f "$img" ]; then
  echo "wallpaper-switch: file not found: $img" >&2
  exit 1
fi

osascript -e "tell application \"System Events\" to set picture of every desktop to \"$img\""
