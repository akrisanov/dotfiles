# dotfiles

Personal macOS & Linux dotfiles managed with [chezmoi](https://chezmoi.io).

## Stack

| Layer | Tool |
|---|---|
| Dotfiles manager | chezmoi |
| Shell | Zsh + Starship prompt |
| Terminal | Ghostty |
| Editor | Helix · VS Code · Zed |
| Packages | Homebrew (Brewfile) |
| Runtimes | mise (Python · Node · Go · Rust · Java) |
| History | atuin |

## Install

```sh
sh -c "$(curl -fsLS https://raw.githubusercontent.com/akrisanov/dotfiles/master/bootstrap.sh)"
```

On first run chezmoi will prompt for name, email and GPG key — saved to `~/.config/chezmoi/chezmoi.toml`.

## Update

```sh
chezmoi update   # pull + apply
chezmoi apply    # apply local changes only
```

## Packages

```sh
brew bundle                  # install everything from Brewfile
brew bundle check            # show what's missing
brew bundle cleanup          # remove packages not in Brewfile
```

## macOS defaults

```sh
~/dotfiles/tools/osx-tweaks
```

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

Or switch manually:

```sh
gitprofile personal
gitprofile          # show current
```

---

Copyright © 2021–2026 Andrey Krisanov

