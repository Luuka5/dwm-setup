# Improves perfomance in Debian based distributions
skip_global_compinit=1

# Adds the ~/.local/bin directory to $PATH
typeset -U path
path+="$HOME/.local/bin"
path+="$HOME/.cargo/env"

# cargo
path+="$HOME/.cargo/bin"

# bun
export BUN_INSTALL="$HOME/.bun"
path+="$BUN_INSTALL/bin"

# Fly.io ctl
export FLYCTL_INSTALL="$HOME/.fly"
path+="$FLYCTL_INSTALL/bin"

export PATH
