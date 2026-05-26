# Extra PATH entries

# Go binaries
export GOPATH="$HOME/go"
path=("$GOPATH/bin" $path)

# Rust / Cargo
[[ -f "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"
