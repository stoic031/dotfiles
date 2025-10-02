# if [ -z "$WAYLAND_DISPLAY" ] && ["$XDG_VTNR" -eq 2 ]; then
# 	exec swayfx-nvidia
# fi

fastfetch

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git
	zsh-autosuggestions
	zsh-syntax-highlighting
	)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"

# Example aliases
alias zshcfg="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias swaycfg="nvim ~/.config/sway/config"
alias nvimcfg="nvim ~/.config/nvim"
alias gttycfg="nvim ~/.config/ghostty/config"
alias srczsh="source ~/.zshrc"

# bun completions
[ -s "/home/andy/.bun/_bun" ] && source "/home/andy/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

source <(fzf --zsh)

# fnm
FNM_PATH="/home/andy/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi
