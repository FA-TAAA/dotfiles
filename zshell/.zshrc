eval "$(starship init zsh)"

# Set Homebrew prefix for plugin paths
export HOMEBREW_PREFIX=$(brew --prefix)

# Set starship prompt configuration path
export STARSHIP_CONFIG=~/.config/starship/starship.toml

source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias ff="fastfetch"
alias c="clear"
alias ls="eza --icons=always"
