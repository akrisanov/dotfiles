# Completion system

autoload -Uz compinit

# Regenerate compinit cache only once per day
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

setopt ALWAYS_TO_END    # move cursor to end of word after completion
setopt AUTO_MENU        # show completion menu on successive Tab press
setopt COMPLETE_IN_WORD # complete from both ends of the cursor

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case-insensitive
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
