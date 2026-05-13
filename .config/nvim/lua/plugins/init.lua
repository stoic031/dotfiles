return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  { import = "plugins.trouble" },
  { import = "plugins.fuzzy" },
  { import = "plugins.completion" },
  { import = "plugins.lsp" },
  { import = "plugins.treesitter" },
  { import = "plugins.lualine" },
  { import = "plugins.tmux-navigator" },
  { import = "plugins.transparent" },
  { import = "plugins.snacks" },
  { import = "plugins.auto-save" },

  -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
  { import = "lazyvim.plugins.extras.lang.json" },
}
