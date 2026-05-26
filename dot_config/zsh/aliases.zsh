# Shell aliases

# ── Files ─────────────────────────────────────────────────────────────────────
alias ls='eza'
alias ll='eza -l'
alias la='eza -la'
alias lt='eza --tree'
alias cat='bat'

# ── Git ───────────────────────────────────────────────────────────────────────
alias g='git'
alias lg='lazygit'

# ── Kubernetes ────────────────────────────────────────────────────────────────
export KUBE_EDITOR='hx'

alias k='kubectl'
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace'
