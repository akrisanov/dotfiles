#!/usr/bin/env sh
# Bootstrap dotfiles using chezmoi.
#
# First-time install (macOS / Linux):
#   sh -c "$(curl -fsLS https://raw.githubusercontent.com/akrisanov/dotfiles/master/bootstrap.sh)"
#
# Re-apply after pulling changes:
#   chezmoi apply
set -e

REPO="akrisanov/dotfiles"

if ! command -v chezmoi >/dev/null 2>&1; then
  echo "Installing chezmoi..."
  if command -v brew >/dev/null 2>&1; then
    brew install chezmoi
  else
    sh -c "$(curl -fsLS get.chezmoi.io)"
  fi
fi

chezmoi init --apply "$REPO"
