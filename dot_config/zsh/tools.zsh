# Tool initializations

# ── mise — runtime version manager ───────────────────────────────────────────
command -v mise &>/dev/null && eval "$(mise activate zsh)"

# ── direnv — per-directory env vars ──────────────────────────────────────────
command -v direnv &>/dev/null && eval "$(direnv hook zsh)"

# ── fzf — fuzzy finder ───────────────────────────────────────────────────────
if command -v fzf &>/dev/null; then
  source <(fzf --zsh)
fi

# ── Zsh plugins (installed via Homebrew) ──────────────────────────────────────
if [[ -n "$HOMEBREW_PREFIX" ]]; then
  [[ -f "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && \
    source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  [[ -f "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] && \
    source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

# ── Starship prompt ───────────────────────────────────────────────────────────
command -v starship &>/dev/null && eval "$(starship init zsh)"
