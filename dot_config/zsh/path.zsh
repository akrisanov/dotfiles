# Extra PATH entries

# Go binaries
export GOPATH="$HOME/go"
path=("$GOPATH/bin" $path)

# Rust / Cargo
[[ -f "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

# LLVM (macOS via Homebrew — needed for clangd, clang-format)
if [[ -n "$HOMEBREW_PREFIX" && -d "$HOMEBREW_PREFIX/opt/llvm/bin" ]]; then
  path=("$HOMEBREW_PREFIX/opt/llvm/bin" $path)
fi
