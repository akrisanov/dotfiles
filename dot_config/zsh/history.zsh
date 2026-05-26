# Shell history settings

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

setopt EXTENDED_HISTORY       # write timestamps to history file
setopt HIST_EXPIRE_DUPS_FIRST # expire duplicate entries first when trimming
setopt HIST_IGNORE_DUPS       # don't record an entry that was just recorded
setopt HIST_IGNORE_SPACE      # ignore entries starting with a space
setopt HIST_VERIFY            # show command from history before executing
setopt SHARE_HISTORY          # share history across all sessions
