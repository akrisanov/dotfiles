# macOS-specific configuration

[[ "$OSTYPE" != darwin* ]] && return

# GPG agent (required for commit signing via pinentry-mac)
export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

# OrbStack — CLI tools and shell integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
