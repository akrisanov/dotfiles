# Brewfile — declarative package management (rendered by chezmoi script)
# Usage:
#   managed by .chezmoiscripts/darwin/run_onchange_before_install-homebrew-bundle.sh.tmpl
#   (script renders this template and runs brew bundle check/install)
{{- $machineKind := (get . "machineKind" | default "") }}
{{- $machineRole := (get . "machineRole" | default "personal") }}
{{- $installGuiApps := (get . "installGuiApps" | default (eq .chezmoi.os "darwin")) }}
{{- $installWorkTools := (get . "installWorkTools" | default false) }}

# ── Common CLI tools ───────────────────────────────────────────────────────────
brew "chezmoi"
brew "bash"
brew "zsh-autosuggestions"
brew "zsh-completions"
brew "zsh-syntax-highlighting"
brew "starship"
brew "mise"
brew "fzf"
brew "tmux"
brew "direnv"
brew "git"
brew "git-lfs"
brew "git-absorb"
brew "delta"
brew "gh"
brew "lazygit"
brew "bat"
brew "eza"
brew "fd"
brew "nnn"
brew "ripgrep"
brew "btop"
brew "dust"
brew "procs"
brew "jq"
brew "yq"
brew "miller"
brew "sqlite"
brew "curlie"
brew "wget"
brew "ffmpeg"
brew "imagemagick"
brew "yt-dlp"
brew "helix"
brew "golangci-lint"
brew "llvm"
brew "zola"
brew "exercism"
brew "dive"
brew "lazydocker"

{{ if eq .chezmoi.os "darwin" -}}
# ── macOS-only CLI tools ───────────────────────────────────────────────────────
brew "terminal-notifier"
brew "mas"
mas "Amphetamine", id: 937984704

{{ if $installGuiApps -}}
# ── GUI apps (macOS only) ──────────────────────────────────────────────────────
cask "orbstack"
cask "jordanbaird-ice"
cask "appcleaner"
cask "openin"
cask "font-cascadia-code"
cask "font-iosevka"
cask "font-jetbrains-mono"
cask "ghostty"
cask "1password"
cask "silentknight"
cask "suspicious-package"
cask "brave-browser"
cask "firefox"
cask "chatgpt"
cask "codex"
cask "raycast"
cask "lulu"
cask "localsend"
cask "tailscale-app"
cask "transmission"
cask "tripmode"
cask "windows-app"
cask "cryptomator"
cask "balenaetcher"
cask "ente"
cask "syncthing-app"
cask "craft"
cask "logseq"
cask "obsidian"
cask "iina"
cask "imageoptim"
cask "plex"
cask "vlc"
cask "telegram"
cask "whatsapp"
cask "zoom"
cask "bruno"
cask "fork"
cask "ollama-app"
cask "postico"
cask "visual-studio-code"
cask "zed"
cask "obs"
cask "keycastr"
cask "forklift"
{{ end -}}

{{ if eq $machineKind "mac-mini" -}}
# ── Mac mini-specific tools ────────────────────────────────────────────────────
{{ if $installGuiApps -}}
cask "betterdisplay"
{{ end -}}
{{ end -}}

{{ if and (eq $machineKind "macbook-air") $installGuiApps -}}
# ── MacBook Air-specific exclusions ────────────────────────────────────────────
# Intentionally skipping:
# - betterdisplay
{{ end -}}

{{ if eq $machineRole "personal" -}}
# ── Personal-only tools ─────────────────────────────────────────────────────────
brew "bjarneo/cliamp/cliamp"
{{ if $installGuiApps -}}
cask "dropbox"
cask "google-drive"
cask "reader"
cask "todoist-app"
cask "plexamp"
cask "steam"
cask "happ"
cask "vivaldi"
{{ end -}}
{{ end -}}

{{ if or (eq $machineRole "work") $installWorkTools -}}
# ── Work-only tools ─────────────────────────────────────────────────────────────
brew "awscli"
brew "helm"
brew "k9s"
brew "kind"
brew "temporal"
brew "tilt"
{{ end -}}
{{ end -}}
