return {
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      enabled = true,
      execution_message = {
        enabled = false,
        message = function()
          return ""
        end,
      },
      trigger_events = {
        immediate_save = { "BufLeave", "FocusLost" },
        defer_save = { "InsertLeave", "TextChanged" },
        cancel_defered_save = { "InsertEnter" },
      },
      noautocmd = false,
      lockmarks = false,
      debounce_delay = 1000,
      debug = false,
    },
    keys = {
      { "<leader>uv", "<cmd>ASToggle<CR>", desc = "Toggle autosave" },
    },
  },
}
