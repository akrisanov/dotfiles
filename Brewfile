# Brewfile — declarative package management
# Usage:
#   brew bundle          # install everything
#   brew bundle check    # show what's missing
#   brew bundle cleanup  # remove unlisted packages

# ── Dotfiles ──────────────────────────────────────────────────────────────────────────────────────
brew "chezmoi"                  # dotfiles manager

# ── Shell ─────────────────────────────────────────────────────────────────────────────────────────
brew "bash"                     # GNU Bash 5 (macOS ships with v3)
brew "zsh"                      # Z shell (ensure modern version on Linux)
brew "zsh-autosuggestions"      # fish-like command suggestions for zsh
brew "zsh-completions"          # additional completion definitions for zsh
brew "zsh-syntax-highlighting"  # fish-like syntax highlighting for zsh
brew "starship"                 # cross-platform shell prompt
brew "fzf"                      # fuzzy finder; integrates with fd, git
brew "tmux"                     # terminal multiplexer
brew "direnv"                   # load/unload env vars based on current directory

on_macos do
  brew "terminal-notifier"      # send desktop notifications from CLI
end

# ── Security ──────────────────────────────────────────────────────────────────────────────────────
brew "gnupg"                    # GPG encryption and signing

# ── Runtime versions ──────────────────────────────────────────────────────────────────────────────
brew "mise"                     # polyglot runtime version manager (replaces asdf)

# ── Git ───────────────────────────────────────────────────────────────────────────────────────────
brew "git"                      # version control
brew "git-lfs"                  # git extension for large file storage
brew "git-absorb"               # automatic fixup commits (git commit --fixup, but smarter)
brew "delta"                    # syntax-highlighting pager for git diff/log/show
brew "gh"                       # GitHub CLI
brew "lazygit"                  # TUI for git

# ── Files & search ────────────────────────────────────────────────────────────────────────────────
brew "bat"                      # cat clone with syntax highlighting and git integration
brew "eza"                      # modern ls; use eza --tree instead of tree
brew "fd"                       # fast and user-friendly alternative to find
brew "nnn"                      # full-featured terminal file manager
brew "ripgrep"                  # fast grep alternative; used by helix for project search

# ── System ────────────────────────────────────────────────────────────────────────────────────────
brew "btop"                     # interactive resource monitor (CPU, memory, disk, network)
brew "dust"                     # modern du — visual disk usage by directory
brew "procs"                    # modern ps — process viewer with search and color

# ── Data ──────────────────────────────────────────────────────────────────────────────────────────
brew "jq"                       # JSON processor and query tool
brew "yq"                       # YAML/TOML/XML processor (jq for YAML)
brew "miller"                   # CSV/TSV/JSON processing in pipelines
brew "sqlite"                   # embedded relational DB CLI

# ── Network ───────────────────────────────────────────────────────────────────────────────────────
brew "curlie"                   # curl with httpie-like syntax and colorized output
brew "wget"                     # non-interactive file downloader

# ── Media ─────────────────────────────────────────────────────────────────────────────────────────
brew "ffmpeg"                   # audio/video converter and processor
brew "yt-dlp"                   # download video/audio from YouTube and other sites

# ── Editors ───────────────────────────────────────────────────────────────────────────────────────
brew "helix"                    # modern modal terminal editor

# ── Writing ───────────────────────────────────────────────────────────────────────────────────────
brew "zola"                     # fast static site generator (single binary)

# ── Learning ──────────────────────────────────────────────────────────────────────────────────────
brew "exercism"                 # CLI for exercism.org coding practice

# ── Docker tools ──────────────────────────────────────────────────────────────────────────────────
brew "ctop"                     # top-like real-time monitor for containers
brew "dive"                     # explore and analyze docker image layers
brew "lazydocker"               # TUI for managing docker/podman containers

on_macos do
  cask "orbstack"               # lightweight Docker Desktop alternative for macOS
end

on_linux do
  brew "podman"                 # daemonless rootless container engine
end

# ══════════════════════════════════════════════════════════════════════════════════════════════════
# macOS Casks
# ══════════════════════════════════════════════════════════════════════════════════════════════════

on_macos do
  # ── System settings ─────────────────────────────────────────────────────────────────────────────
  cask "betterdisplay"          # advanced display management (resolution, HDR, night mode)
  cask "fontsmoothingadjuster"  # restore font smoothing removed in macOS Big Sur+
  cask "jordanbaird-ice"        # menu bar manager — hide and organize menu bar items
  cask "monitorcontrol"         # control external monitor brightness/volume via Mac keys
  cask "tg-pro"                 # fan speed control and temperature monitoring

  # ── Utilities ───────────────────────────────────────────────────────────────────────────────────
  cask "amphetamine"            # keep Mac awake on demand
  cask "appcleaner"             # thoroughly uninstall apps and their leftover files
  cask "openin"                 # open links and files in the right app/browser
  cask "rectangle"              # window manager with keyboard shortcuts

  # ── Fonts ───────────────────────────────────────────────────────────────────────────────────────
  cask "font-cascadia-code"     # monospace font with ligatures by Microsoft
  cask "font-iosevka"           # slender monospace font for code
  cask "font-jetbrains-mono"    # monospace font with ligatures by JetBrains

  # ── Terminal ────────────────────────────────────────────────────────────────────────────────────
  cask "ghostty"                # fast GPU-accelerated terminal emulator

  # ── Security ────────────────────────────────────────────────────────────────────────────────────
  brew "pinentry-mac"           # GPG passphrase dialog integrated with macOS Keychain
  cask "1password"              # password manager
  cask "gpg-suite-no-mail"      # GUI for GPG key management (without Mail plugin)
  cask "silentknight"           # checks macOS security settings against best practices
  cask "suspicious-package"     # inspect pkg installers before running them

  # ── Browsers ────────────────────────────────────────────────────────────────────────────────────
  cask "brave-browser"          # personal browser with built-in ad blocking
  cask "firefox"                # browser for web engineering and devtools
  cask "vivaldi"                # feature-rich browser for work

  # ── AI ──────────────────────────────────────────────────────────────────────────────────────────
  cask "chatgpt"                # OpenAI desktop client

  # ── Network ─────────────────────────────────────────────────────────────────────────────────────
  cask "lulu"                   # open-source outbound firewall
  cask "localsend"              # AirDrop alternative for local file transfer
  cask "transmission"           # lightweight BitTorrent client
  cask "tripmode"               # manage app access when tethering to mobile hotspot
  cask "windows-app"            # Microsoft Remote Desktop client

  # ── Security & privacy ──────────────────────────────────────────────────────────────────────────
  cask "cryptomator"            # client-side encryption for cloud storage
  cask "balenaetcher"           # flash OS images to USB drives and SD cards

  # ── Files & sync ────────────────────────────────────────────────────────────────────────────────
  cask "ente"                   # end-to-end encrypted photo storage (Google Photos alternative)
  cask "syncthing"              # peer-to-peer continuous file synchronisation

  # ── Notes & tasks ───────────────────────────────────────────────────────────────────────────────
  cask "craft"                  # native document editor for notes and docs
  cask "logseq"                 # outliner for notes with graph view
  cask "netnewswire"            # RSS reader
  cask "obsidian"               # knowledge base built on local Markdown files

  # ── Media ───────────────────────────────────────────────────────────────────────────────────────
  cask "airflow"                # stream video files to Apple TV and Chromecast
  cask "doppler"                # music player for local files
  cask "doppler-transfer"       # transfer music to iPhone without iTunes
  cask "iina"                   # modern video player for macOS
  cask "imageoptim"             # losslessly compress images
  cask "plex"                   # media server client
  cask "vlc"                    # universal media player
  cask "xld"                    # lossless audio converter and CD ripper

  # ── Communication ───────────────────────────────────────────────────────────────────────────────
  cask "telegram"               # messenger
  cask "whatsapp"               # messenger
  cask "zoom"                   # video conferencing

  # ── Development ─────────────────────────────────────────────────────────────────────────────────
  cask "bruno"                  # open-source API client with Git-friendly collections
  cask "fork"                   # fast and friendly Git GUI client
  cask "ollama"                 # run large language models locally
  cask "postico"                # PostgreSQL GUI client for macOS
  cask "visual-studio-code"     # code editor
  cask "zed"                    # fast collaborative code editor

  # ── Misc ────────────────────────────────────────────────────────────────────────────────────────
  cask "obs"                    # screen recording and live streaming
  cask "whisky"                 # run Windows apps on macOS via Wine
end
