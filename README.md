# dotfiles

Cross-machine dotfiles managed with [chezmoi](https://chezmoi.io) for macOS, WSL2 Ubuntu, and Linux.

## Core idea

- `~/.local/share/chezmoi` is the source of truth.
- `chezmoi apply` writes real files to `$HOME` (not symlinks).
- Keep templates small; put changing lists into separate files.

## Install

### macOS

```sh
sh -c "$(curl -fsLS https://raw.githubusercontent.com/akrisanov/dotfiles/master/bootstrap.sh)"
```

### WSL2 / Linux

```sh
sudo apt-get update
sudo apt-get install -y curl git
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply akrisanov/dotfiles
```

### Non-interactive init

```sh
chezmoi init --apply akrisanov/dotfiles \
  --promptString name="Andrey Krisanov" \
  --promptString email="you@example.com" \
  --promptString signingKey="ssh-ed25519 AAAA..." \
  --promptString runtimeEnv="darwin" \
  --promptString machineKind="mac-mini" \
  --promptString machineRole="personal" \
  --promptString installGuiApps="true" \
  --promptString installWorkTools="false"
```

## Machine profile

Stored in `~/.config/chezmoi/chezmoi.toml`:

```toml
[data]
runtimeEnv = "darwin"      # darwin / wsl / linux
machineKind = "mac-mini"   # mac-mini / macbook-air / wsl / linux-desktop
machineRole = "personal"   # personal / work
installGuiApps = true
installWorkTools = false
```

## Daily workflow

```sh
chezmoi edit --apply ~/.zshrc
chezmoi diff
chezmoi cd
git add -A
git commit -m "Update dotfiles"
git push
chezmoi update --verbose
```

When to use:

- `chezmoi add <file>`: import one manually edited home file back to source.
- `chezmoi re-add`: re-import all tracked files changed in home directory.
- `chezmoi apply`: apply local source changes.
- `chezmoi update`: pull + apply from remote.

Inspection-first update:

```sh
chezmoi git pull -- --autostash --rebase
chezmoi diff
chezmoi apply --verbose
```

## Package sync (Homebrew)

```sh
brew bundle check --no-upgrade --file "$(chezmoi source-path)/Brewfile"
brew outdated --greedy
brew bundle cleanup --file "$(chezmoi source-path)/Brewfile"
```

## Automation (run_onchange scripts)

- Homebrew bundle sync on macOS when `Brewfile` changes.
- Linux baseline CLI packages on Debian/Ubuntu.
- VS Code extension sync from profile-based lists.
- macOS defaults apply through `scripts/osx-tweaks`.

## Local/private files

- `~/.ssh/config.local` is local-only and never committed.
- `create_private_dot_ssh/config.local.tmpl` bootstraps it once with `0600`.
- Linux package automation currently targets Debian/Ubuntu (`apt-get`) only.

## Shared agent skills

- Skills source: `dot_agents/skills` -> target: `~/.agents/skills`.
- `~/.claude/skills` is a symlink to `~/.agents/skills`.

---

Copyright © 2021–2026 Andrey Krisanov
