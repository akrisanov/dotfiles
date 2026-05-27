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

# ── Homebrew ──────────────────────────────────────────────────────────────────
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# ── chezmoi ───────────────────────────────────────────────────────────────────
if ! command -v chezmoi >/dev/null 2>&1; then
  echo "Installing chezmoi..."
  brew install chezmoi
fi

chezmoi init --apply "$REPO"
