#!/usr/bin/env bash
# Installs VS Code extensions on first chezmoi apply.
# To re-run after adding new extensions, rename this file (e.g. append _v2).

set -euo pipefail

if ! command -v code &>/dev/null; then
  echo "VS Code CLI not found, skipping extension install"
  exit 0
fi

extensions=(
  # Themes & Icons
  tonsky.theme-alabaster
  gargakshit.theme-alabaster-dark
  metaphore.kanagawa-vscode-color-theme
  github.github-vscode-theme
  be5invis.vscode-icontheme-nomo-dark
  file-icons.file-icons

  # Editor utilities
  aaron-bond.better-comments
  usernamehw.errorlens
  gruntfuggly.todo-tree
  shardulm94.trailing-spaces
  naumovs.color-highlight
  editorconfig.editorconfig
  marclipovsky.string-manipulation
  pustelto.bracketeer
  jkiviluoto.tws

  # Git
  eamodio.gitlens
  codezombiech.gitignore

  # AI assistants
  anthropic.claude-code
  google.geminicodeassist   # gemini-cli-vscode-ide-companion overlaps with this
  openai.chatgpt

  # Python
  ms-python.python
  ms-python.vscode-pylance
  ms-python.debugpy
  ms-python.mypy-type-checker
  ms-python.vscode-python-envs
  charliermarsh.ruff        # handles formatting (replaces black) + linting
  astral-sh.ty
  mgesbert.python-path
  ms-playwright.playwright

  # Go
  golang.go

  # Rust
  rust-lang.rust-analyzer
  llvm-vs-code-extensions.lldb-dap  # official LLDB DAP (replaces vadimcn.vscode-lldb)

  # C/C++
  ms-vscode.cpptools
  ms-vscode.cpptools-extension-pack
  ms-vscode.cpptools-themes
  ms-vscode.cpp-devtools
  llvm-vs-code-extensions.vscode-clangd
  ms-vscode.cmake-tools
  ms-vscode.makefile-tools

  # JavaScript / TypeScript
  dbaeumer.vscode-eslint
  esbenp.prettier-vscode
  biomejs.biome
  christian-kohler.npm-intellisense
  christian-kohler.path-intellisense
  yoavbls.pretty-ts-errors
  pflannery.vscode-versionlens

  # Clojure
  betterthantomorrow.calva
  betterthantomorrow.calva-power-tools
  betterthantomorrow.calva-spritz

  # Infrastructure / DevOps
  hashicorp.terraform
  ms-azuretools.vscode-docker    # docker.docker is the old ID for the same extension
  ms-azuretools.vscode-containers
  ms-kubernetes-tools.vscode-kubernetes-tools
  redhat.ansible
  tchoupinax.tilt

  # Data / SQL / APIs
  ms-ossdata.vscode-pgsql
  inferrinizzard.prettier-sql-vscode
  mechatroner.rainbow-csv
  humao.rest-client
  aiven.aiven-sql-optimizer-extension

  # Markup / Config
  redhat.vscode-yaml
  redhat.vscode-xml
  tamasfe.even-better-toml
  mikestead.dotenv
  davidanson.vscode-markdownlint
  bierner.markdown-mermaid
  shd101wyy.markdown-preview-enhanced
  samuelcolvin.jinjahtml
  trond-snekvik.simple-rst
  mrorz.language-gettext
  brody715.txtar

  # Remote / Live Share
  ms-vscode-remote.vscode-remote-extensionpack  # includes remote-ssh, remote-ssh-edit, remote-containers
  ms-vscode.remote-explorer
  ms-vsliveshare.vsliveshare

  # Misc
  aykutsarac.jsoncrack-vscode
  ahmadalli.vscode-nginx-conf
  raynigon.nginx-formatter
  drblury.protobuf-vsc
  evgeniyryzhkov.pvs-studio-vscode
  gitlab.gitlab-workflow
  ms-vscode.extension-test-runner  # modern test runner (replaces hbenl ecosystem)
  ssmi.after-dark
  zakcox.sea-turtle
)

for ext in "${extensions[@]}"; do
  code --install-extension "$ext" --force 2>/dev/null || true
done

echo "VS Code extensions installed."
