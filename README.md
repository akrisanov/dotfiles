# Personal dotfiles for macOS

## Install

```bash
sh -c "$(curl -fsS https://raw.githubusercontent.com/akrisanov/dotfiles/master/install)"
```

Clones GitHub repository into `~/dotfiles`, symlinks all files and folders from `~/dotfiles/dots/` into `~` by prepending a dot to the original name.
If dotfile already exists it will be backed up in `~/dotfiles.old/`.

## Update

```bash
~/dotfiles/install
```

## Software and Packages

These days I avoid installing development packages like programming languages, databases, etc. on macOS directly via homebrew.
I run Docker containers whenever it's possible or makes sense. I still use homebrew to quickly download all the other software though:

```bash
# setup macOS tweaks and configs:
~/dotfiles/tools/osx-tweaks

# install useful homebrew packages:
~/dotfiles/tools/osx-brew
~/dotfiles/tools/osx-cask
```

## Favorite Fonts

- [FiraCode](https://github.com/tonsky/FiraCodes)
- [JetBrains Mono](https://github.com/JetBrains/JetBrainsMono)
- Apple’s SF Mono Font

---

Copyright (c) 2021 Andrey Krisanov
