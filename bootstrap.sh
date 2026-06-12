#!/usr/bin/env sh
# Bootstrap dotfiles using chezmoi.
#
# First-time install:
#   sh -c "$(curl -fsLS https://raw.githubusercontent.com/akrisanov/dotfiles/master/bootstrap.sh)"
#
# Re-apply after pulling changes:
#   chezmoi apply
set -e

REPO="akrisanov/dotfiles"

install_chezmoi() {
  if command -v chezmoi >/dev/null 2>&1; then
    return 0
  fi

  case "$(uname -s)" in
    Darwin)
      if ! command -v brew >/dev/null 2>&1; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
      fi
      echo "Installing chezmoi with Homebrew..."
      brew install chezmoi
      ;;
    Linux)
      echo "Installing chezmoi with the official installer..."
      sh -c "$(curl -fsLS https://get.chezmoi.io)" -- -b "$HOME/.local/bin"
      export PATH="$HOME/.local/bin:$PATH"
      ;;
    *)
      echo "Unsupported OS: $(uname -s)"
      exit 1
      ;;
  esac
}

install_chezmoi
chezmoi init --apply "$REPO"
