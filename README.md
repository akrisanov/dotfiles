# dotfiles

Cross-machine dotfiles managed with [chezmoi](https://chezmoi.io) for:

- macOS
- WSL2 (Ubuntu)
- Linux desktop and laptop

## Configuration model

The machine profile is stored in `~/.config/chezmoi/chezmoi.toml`:

```toml
[data]
name = "..."
email = "..."
signingKey = "..."
runtimeEnv = "darwin"      # darwin / wsl / linux
machineKind = "mac-mini"   # mac-mini / macbook-air / wsl / linux-desktop
machineRole = "personal"   # personal / work
installGuiApps = true
installWorkTools = false
```

Field meaning:

- `runtimeEnv`: runtime platform class.
- `machineKind`: concrete machine profile.
- `machineRole`: personal vs work defaults.
- `installGuiApps`: allow macOS GUI casks.
- `installWorkTools`: opt into work package/extension layers even on personal machines.

## Install

### macOS

```sh
sh -c "$(curl -fsLS https://raw.githubusercontent.com/akrisanov/dotfiles/master/bootstrap.sh)"
```

### WSL2 Ubuntu

```sh
sudo apt-get update
sudo apt-get install -y curl git
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply akrisanov/dotfiles
```

### Linux (non-WSL)

```sh
sudo apt-get update
sudo apt-get install -y curl git
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply akrisanov/dotfiles
```

### Non-interactive init (preseed profile values)

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

## Daily workflow

```sh
chezmoi edit --apply ~/.zshrc
chezmoi diff
chezmoi add ~/.zshrc
chezmoi re-add
chezmoi cd
git status
git add -A
git commit -m "Update dotfiles"
git push
chezmoi update --verbose
```

## Command guide

```sh
chezmoi apply
chezmoi update
chezmoi init --apply akrisanov/dotfiles
```

- `chezmoi apply`: apply local source state to target files.
- `chezmoi update`: pull remote changes, then apply.
- `chezmoi init --apply akrisanov/dotfiles`: first-time bootstrap from GitHub.

Inspection-first update flow:

```sh
chezmoi git pull -- --autostash --rebase
chezmoi diff
chezmoi apply --verbose
```

## Automation layers

- `.chezmoiscripts/darwin/run_onchange_before_install-homebrew-bundle.sh.tmpl`: macOS Homebrew install with `--no-upgrade`, only when `Brewfile` changes.
- `.chezmoiscripts/linux/run_onchange_before_install-linux-cli-packages.sh.tmpl`: Debian/Ubuntu CLI baseline (WSL/Linux), plus `starship` and `mise` if missing.
- `.chezmoiscripts/run_onchange_after_sync-vscode-extensions.sh.tmpl`: installs only missing extensions from profile-aware lists.
- `.chezmoiscripts/darwin/run_onchange_after_apply-macos-defaults.sh.tmpl`: applies macOS defaults via `scripts/osx-tweaks`.

## Git profiles

Profiles auto-activate by directory:

| Directory | Profile |
|---|---|
| `~/Projects/` | `~/.config/git/profiles/personal.gitconfig` |
| `~/Work/` | `~/.config/git/profiles/work.gitconfig` |

Copy an example and fill in your details:

```sh
cp ~/.config/git/profiles/personal.gitconfig.example ~/.config/git/profiles/personal.gitconfig
```

Manual switch:

```sh
gitprofile personal
gitprofile
```

## Manual by design

- `~/.ssh/config.local` is intentionally local-only and never committed.
- `~/.ssh/config.local` is bootstrapped via `create_private_dot_ssh/config.local.tmpl` with `0600` permissions (`private_` attribute) and is not overwritten if already present.
- Linux package automation currently targets Debian/Ubuntu (`apt-get`) only.

## Shared agent skills

- Shared skills live in `~/.agents/skills` (source: `dot_agents/skills`).
- `~/.claude/skills` is managed as a symlink to `~/.agents/skills` for compatibility.

---

Copyright © 2021–2026 Andrey Krisanov
