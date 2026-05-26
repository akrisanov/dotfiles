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

# ── Git profile switcher ───────────────────────────────────────────────────────
# Usage: gitprofile <name>   (looks up ~/.config/git/profiles/<name>.gitconfig)
#        gitprofile          (show current active profile)
gitprofile() {
  local profiles_dir="$HOME/.config/git/profiles"
  local local_cfg="$HOME/.gitconfig.local"

  if [[ -z "$1" ]]; then
    if [[ -f "$local_cfg" ]]; then
      echo "Active profile: $(grep -m1 'email' "$local_cfg" | tr -d ' ')"
    else
      echo "No active profile (using default from ~/.gitconfig)"
    fi
    echo "Available profiles:"
    ls "$profiles_dir"/*.gitconfig 2>/dev/null | xargs -I{} basename {} .gitconfig || echo "  (none)"
    return 0
  fi

  local profile_file="$profiles_dir/$1.gitconfig"
  if [[ ! -f "$profile_file" ]]; then
    echo "Profile not found: $profile_file"
    echo "Create it from: $profiles_dir/$1.gitconfig.example"
    return 1
  fi

  cp "$profile_file" "$local_cfg"
  echo "Switched to profile: $1"
  git config --global user.email
}
