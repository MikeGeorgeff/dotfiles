-- Which-key for keybinding hints
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    local wk = require("which-key")
    
    wk.setup({})

    -- Register groups
    wk.add({
      { "<leader>b", group = "Buffer" },
      { "<leader>c", group = "Code/Quickfix" },
      { "<leader>d", group = "Diagnostics" },
      { "<leader>e", group = "Explorer" },
      { "<leader>f", group = "Find" },
      { "<leader>h", group = "Git Hunk" },
      { "<leader>r", group = "Rename/Restart" },
      { "<leader>s", group = "Split" },
      { "<leader>t", group = "Tab/Toggle" },
    })
  end,
}
