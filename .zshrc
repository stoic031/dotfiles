tmux
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

# bun completions
[ -s "/home/andy/.bun/_bun" ] && source "/home/andy/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

source <(fzf --zsh)
