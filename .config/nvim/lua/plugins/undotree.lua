-- Undotree for visualizing undo history
return {
  "mbbill/undotree",
  config = function()
    -- Keymaps
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })
    
    -- Undotree configuration
    vim.g.undotree_WindowLayout = 2 -- Layout style
    vim.g.undotree_ShortIndicators = 1 -- Use short time indicators
    vim.g.undotree_SetFocusWhenToggle = 1 -- Focus undotree when toggled
  end,
}
