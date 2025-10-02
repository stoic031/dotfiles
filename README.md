# 🚀 Dotfiles

My personal dotfiles for Arch Linux (Wayland + Sway) development environment.

## 📦 What's Inside

### Window Manager & Compositor
- **Sway** - Tiling Wayland compositor with custom keybindings
- **Wofi** - Application launcher with custom styling
- **Ghostty** - Modern, GPU-accelerated terminal emulator
  - Font: JetBrainsMono Nerd Font
  - Theme: Catppuccin Frappe with transparency

### Development Tools
- **Neovim** - LazyVim configuration with custom plugins
  - LSP: Full language server support via Mason
  - Completion: blink.cmp with friendly-snippets
  - Fuzzy Finder: fzf-lua for fast file navigation
  - UI: Catppuccin theme with transparency
  - Treesitter: Syntax highlighting for multiple languages
  - Tmux integration: Seamless navigation between vim and tmux panes

- **Tmux** - Terminal multiplexer with custom configuration
  - Theme: Catppuccin Mocha
  - Prefix: `Ctrl+a`
  - Status bar: Weather, battery, CPU/RAM usage
  - Vim-tmux-navigator for seamless pane switching

### Shell & CLI
- **Zsh** - Shell with Oh My Zsh
- **Starship** - Fast, customizable prompt
- **Fastfetch** - System information display

## 🎨 Theme

**Catppuccin** color scheme throughout:
- Ghostty: Frappe variant
- Neovim: Main theme
- Tmux: Mocha variant
- Consistent visual experience across all tools

## ⚙️ Installation

### Prerequisites
```bash
# Install required packages (Arch Linux)
sudo pacman -S sway wofi ghostty neovim tmux zsh git stow

# Optional but recommended
sudo pacman -S starship fastfetch fzf ripgrep fd grim slurp wl-clipboard
```

### Using GNU Stow

This repository is designed to be managed with GNU Stow:

```bash
# Clone the repository
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Stow all configs
stow .

# Or stow specific configs
stow --target=$HOME/.config/nvim .config/nvim
stow --target=$HOME/.config/sway .config/sway
```

### Manual Installation

If you prefer manual installation:

```bash
# Clone and copy configs
git clone https://github.com/yourusername/dotfiles.git
cd dotfiles

# Copy configs to appropriate locations
cp -r .config/* ~/.config/
cp .tmux.conf ~/
cp .zshrc ~/
```

### Post-Installation

1. **Tmux Plugin Manager:**
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Then press Ctrl+a + I in tmux to install plugins
```

2. **Neovim:**
```bash
# LazyVim will auto-install on first launch
nvim
```

3. **Oh My Zsh:**
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## 🔧 Configuration Highlights

### Sway Keybindings

| Key | Action |
|-----|--------|
| `Mod+Return` | Launch terminal |
| `Mod+d` | Launch Wofi |
| `Mod+e` | Launch file manager (Thunar) |
| `Mod+h/j/k/l` | Navigate windows (vim-style) |
| `Mod+Shift+p` | Screenshot (full screen) |
| `Mod+Shift+s` | Screenshot (selection) |
| `Mod+p/n` | Previous/next workspace |

### Tmux Keybindings

| Key | Action |
|-----|--------|
| `Ctrl+a` | Prefix key |
| `Prefix + \` | Split horizontal |
| `Prefix + -` | Split vertical |
| `Prefix + hjkl` | Resize panes |
| `Ctrl+h/j/k/l` | Navigate panes/vim splits |

### Neovim Features

- **LazyVim** base configuration
- **LSP** servers auto-installed via Mason
- **Completion** with blink.cmp
- **Fuzzy finding** with fzf-lua
- **Transparent** background
- **Treesitter** for enhanced syntax highlighting
- Seamless **tmux integration**

## 📝 Customization

### Changing Theme Colors

Edit the theme in respective config files:
- Ghostty: `.config/ghostty/config`
- Neovim: `.config/nvim/lua/plugins/init.lua`
- Tmux: `.tmux.conf` (look for `@catppuccin_flavor`)

### Adding Neovim Plugins

Create a new file in `.config/nvim/lua/plugins/`:
```lua
return {
  "author/plugin-name",
  config = function()
    -- your config
  end,
}
```

## 🖼️ Screenshots

*Add your screenshots here*

## 📄 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](.config/nvim/LICENSE) file for details.

## 🙏 Acknowledgments

- [LazyVim](https://github.com/LazyVim/LazyVim)
- [Catppuccin](https://github.com/catppuccin/catppuccin)
- [Sway](https://swaywm.org/)
- All the amazing open-source projects that make this setup possible

---

**Note:** This configuration is optimized for my personal workflow. Feel free to fork and customize to your needs!
