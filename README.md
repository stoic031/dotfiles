# 🚀 Dotfiles

My personal dotfiles for **macOS** development environment.

## 📦 What's Inside

This repository is organized into two main sections:

### `common/` - Cross-platform configs
Configurations that work across different systems:

- **Neovim** - LazyVim configuration with custom plugins
  - LSP: Full language server support via Mason
  - Completion: blink.cmp with friendly-snippets
  - Fuzzy Finder: fzf-lua for fast file navigation
  - UI: Catppuccin theme with transparency
  - Treesitter: Syntax highlighting for multiple languages
  - Tmux integration: Seamless navigation between vim and tmux panes

- **Starship** - Fast, customizable cross-shell prompt
  - Custom prompt format with user, hostname, directory
  - Shows sudo status, package versions, and more

### `macos/` - macOS-specific configs
Configurations tailored for macOS:

- **Hammerspoon** - Powerful automation tool for macOS
  - Auto-reload on config changes
  - Input source switching (English, Vietnamese Telex, Japanese)
  - App-specific input rules (Ghostty → EN, Brave → VN, Xcode → EN)

## 🎨 Theme

**Catppuccin** color scheme throughout:
- Neovim: Main theme
- Starship: Custom styled prompt
- Consistent visual experience across all tools

## ⚙️ Installation

### Prerequisites

```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install required packages
brew install neovim tmux zsh git stow starship

# Install Ghostty terminal (optional but recommended)
brew install --cask ghostty

# Install Hammerspoon for macOS automation
brew install --cask hammerspoon
```

### Using GNU Stow

This repository is designed to be managed with GNU Stow:

```bash
# Clone the repository
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Stow common configs (applies to all systems)
stow common

# Stow macOS-specific configs
stow macos

# Or stow specific configs individually
stow --target=$HOME/.config/nvim common/.config/nvim
stow --target=$HOME/.config/starship.toml common/.config/starship.toml
stow --target=$HOME/.hammerspoon macos/hammerspoon
```

### Manual Installation

If you prefer manual installation:

```bash
# Clone and copy configs
git clone https://github.com/yourusername/dotfiles.git
cd dotfiles

# Copy common configs
cp -r common/.config/* ~/.config/

# Copy macOS-specific configs
cp -r macos/hammerspoon ~/.hammerspoon
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

3. **Hammerspoon:**
```bash
# Open Hammerspoon app
# Grant necessary permissions in System Preferences > Security & Privacy
# The config will auto-reload when you make changes
```

4. **Starship:**
```bash
# Add to your ~/.zshrc or ~/.bashrc
eval "$(starship init zsh)"
```

## 🔧 Configuration Highlights

### Hammerspoon Features

| Feature | Description |
|---------|-------------|
| Auto-reload | Automatically reloads config on file changes |
| Input Switching | Switch between EN, VN (Telex), and JP input sources |
| App-specific Rules | Different input sources for different apps |

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

### Changing Neovim Theme

Edit `.config/nvim/lua/plugins/init.lua` or create custom theme files in `lua/plugins/`.

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

### Customizing Hammerspoon Input Rules

Edit `macos/hammerspoon/init.lua`:
```lua
local appRules = {
    ["Ghostty"] = inputSources.en,
    ["Xcode"] = inputSources.en,
    ["Brave Browser"] = inputSources.vn,
    -- Add your own rules here
}
```

### Customizing Starship Prompt

Edit `common/.config/starship.toml` to change prompt appearance.

## 📄 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](.config/nvim/LICENSE) file for details.

## 🙏 Acknowledgments

- [LazyVim](https://github.com/LazyVim/LazyVim)
- [Catppuccin](https://github.com/catppuccin/catppuccin)
- [Hammerspoon](https://www.hammerspoon.org/)
- [Starship](https://starship.rs/)
- All the amazing open-source projects that make this setup possible

---

**Note:** This configuration is optimized for my personal workflow on macOS. Feel free to fork and customize to your needs!
