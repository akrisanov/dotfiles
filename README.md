# dotfiles

Personal dotfiles for Mac OS development machine.

## Install

```bash
sh -c "$(curl -fsS https://raw.githubusercontent.com/akrisanov/dotfiles/master/install)"
```

Clones GitHub repository into `~/dotfiles`, symlinks all files and folders from `~/dotfiles/dots/` into `~`
by prepending a dot to the original name.
If dotfile already exists it will be backed up in `~/dotfiles.old/`.

## Update

```bash
~/dotfiles/install
```

## MacOS Specific Software and Packages

```bash
# setup MacOS tweaks and configs:
~/dotfiles/tools/osx-tweaks

# install useful homebrew packages:
~/dotfiles/tools/osx-brew
~/dotfiles/tools/osx-cask
```

## Fonts

TODO

## Zsh and Prezto

TODO
