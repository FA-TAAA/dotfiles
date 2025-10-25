# Set Homebrew prefix for plugin paths
export HOMEBREW_PREFIX=$(brew --prefix)

# Set starship prompt configuration path
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Source zsh-vi-mode FIRST (before everything)
source $HOMEBREW_PREFIX/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Load other plugins AFTER zsh-vi-mode initializes
function zvm_after_init() {
    # Load autosuggestions first
    source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    
    # Load syntax highlighting last
    source $HOMEBREW_PREFIX/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
    
    # Re-initialize starship after zsh-vi-mode to fix keymap conflicts
    eval "$(starship init zsh)"
}

# Activate Completion
if type brew &>/dev/null; then
       FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
       autoload -Uz compinit
       # Only regenerate once per day
       if [[ -n ${ZDOTDIR}/.zcompdump(#qNmh+24) ]]; then
           compinit
       else
           compinit -C
       fi
   fi

# Aliases
alias ff="fastfetch"
alias c="clear"
alias ls="eza --icons=always"
