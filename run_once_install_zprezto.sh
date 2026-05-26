#!/usr/bin/env sh
# chezmoi run_once: installs zprezto and its submodules.
# This script is re-run only if its content changes.

if [ ! -d "$HOME/.zprezto" ]; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
else
  git -C "$HOME/.zprezto" pull --rebase origin master
  git -C "$HOME/.zprezto" submodule update --recursive --remote
fi
