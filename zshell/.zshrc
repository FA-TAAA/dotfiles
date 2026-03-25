eval "$(starship init zsh)"

# Set Homebrew prefix for plugin paths
export HOMEBREW_PREFIX=$(brew --prefix)

# Set starship prompt configuration path
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Source zsh-vi-mode FIRST (before everything)
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Yazi Shell Wrapper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}


# Aliases
alias ff="fastfetch"
alias c="clear"
alias ls="eza --icons=always"
