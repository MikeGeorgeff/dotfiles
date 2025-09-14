return {
  {
    "Shatur/neovim-ayu",
      name = "ayu", -- Define the name for the colorscheme
      lazy = true, -- Lazy load the colorscheme
      event = "VimEnter", -- Load on VimEnter event
      config = function()
        require("ayu").setup({
          -- Optional: Configure Ayu specific settings here
          mirage = false, -- Set to true for mirage variant, false for dark
          terminal = true, -- Let terminal manage its own colors
          overrides = {}, -- Custom overrides for specific highlight groups
        })
      end,
  },
}
