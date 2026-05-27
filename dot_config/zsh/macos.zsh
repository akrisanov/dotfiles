# macOS-specific configuration

[[ "$OSTYPE" != darwin* ]] && return

# OrbStack — CLI tools and shell integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
