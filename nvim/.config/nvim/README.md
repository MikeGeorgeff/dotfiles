# Neovim Configuration

A modern, feature-rich Neovim configuration using Lua with sensible defaults and powerful plugins.

## Features

- **Plugin Manager**: lazy.nvim for fast plugin management
- **Syntax Highlighting**: Treesitter for better syntax highlighting and code understanding
- **LSP Support**: Full LSP integration with autocompletion and diagnostics
- **File Explorer**: nvim-tree for easy file navigation
- **Fuzzy Finder**: Telescope for finding files, text, and more
- **Git Integration**: Gitsigns for git diff markers and commands
- **Auto Completion**: nvim-cmp with snippet support
- **Formatting**: Conform.nvim for consistent code formatting
- **Undo History**: Undotree for visualizing and navigating undo history
- **Beautiful UI**: Ayu Dark color scheme with Lualine statusline

## Installation

### Prerequisites

- Neovim >= 0.9.0
- Git
- A Nerd Font (for icons)
- ripgrep (for Telescope live grep)
- Node.js (for some LSP servers)

### Setup

1. Backup your existing Neovim configuration:
```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

2. Copy this configuration to your Neovim config directory:
```bash
mkdir -p ~/.config/nvim
cp -r init.lua lua ~/.config/nvim/
```

3. Start Neovim:
```bash
nvim
```

Lazy.nvim will automatically install all plugins on first launch.

4. Install LSP servers and formatters:
```
:Mason
```

Select and install the language servers you need from the Mason UI.

## Project Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
└── lua/
    ├── settings.lua         # Neovim settings
    ├── keymaps.lua         # Key mappings
    └── plugins/            # Plugin configurations
        ├── colorscheme.lua
        ├── treesitter.lua
        ├── telescope.lua
        ├── lsp.lua
        ├── cmp.lua
        ├── nvim-tree.lua
        ├── lualine.lua
        ├── gitsigns.lua
        ├── which-key.lua
        ├── autopairs.lua
        ├── comment.lua
        ├── formatting.lua
        ├── mason.lua
        └── indent-blankline.lua
```

## Key Mappings

### Leader Key
- Leader key is set to `Space`

### General
- `<leader>w` - Save file
- `<leader>q` - Quit
- `<leader>x` - Save and quit
- `<Esc>` - Clear search highlights
- `<leader>u` - Toggle undotree

### Window Navigation
- `<C-h>` - Move to left window
- `<C-j>` - Move to bottom window
- `<C-k>` - Move to top window
- `<C-l>` - Move to right window

### Buffer Navigation
- `<S-h>` - Previous buffer
- `<S-l>` - Next buffer
- `<leader>bd` - Delete buffer

### File Explorer (nvim-tree)
- `<leader>ee` - Toggle file explorer
- `<leader>ef` - Toggle file explorer on current file
- `<leader>ec` - Collapse file explorer
- `<leader>er` - Refresh file explorer

### Telescope (Fuzzy Finder)
- `<leader>ff` - Find files
- `<leader>fr` - Find recent files
- `<leader>fg` - Live grep
- `<leader>fc` - Find string under cursor
- `<leader>fb` - Find buffers
- `<leader>fh` - Find help

### LSP
- `gd` - Go to definition
- `gD` - Go to declaration
- `gi` - Go to implementation
- `gt` - Go to type definition
- `gR` - Show references
- `K` - Show documentation
- `<leader>ca` - Code actions
- `<leader>rn` - Rename symbol
- `[d` - Previous diagnostic
- `]d` - Next diagnostic
- `<leader>d` - Show line diagnostics
- `<leader>D` - Show buffer diagnostics

### Git (Gitsigns)
- `]c` - Next hunk
- `[c` - Previous hunk
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hS` - Stage buffer
- `<leader>hR` - Reset buffer
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line
- `<leader>hd` - Diff this

### Commenting
- `gcc` - Toggle line comment
- `gbc` - Toggle block comment
- `gc` - Comment operator (use with motions)

### Formatting
- `<leader>mp` - Format file or range

### Splits
- `<leader>sv` - Split vertically
- `<leader>sh` - Split horizontally
- `<leader>se` - Make splits equal size
- `<leader>sx` - Close current split

## Plugin Details

### LSP Servers Configured
- Lua (lua_ls)
- Python (pyright)
- TypeScript/JavaScript (ts_ls)
- HTML (html)
- CSS (cssls)
- Rust (rust_analyzer)
- Go (gopls)
- PHP (intelephense)
- JSON (jsonls)
- YAML (yamlls)
- Bash (bashls)
- Markdown (marksman)
- Ansible (ansiblels)
- Dockerfile (dockerls)
- Docker Compose (docker_compose_language_service)
- Terraform (terraformls + tflint)

### Formatters Configured
- JavaScript/TypeScript/CSS/HTML/JSON/YAML/Markdown: Prettier
- Lua: Stylua
- Python: Black + isort
- Rust: rustfmt
- Go: gofmt
- PHP: php-cs-fixer
- Bash/Shell: shfmt
- Terraform: terraform_fmt
- Ansible: ansible-lint (linter)

## Customization

### Adding More Plugins

Create a new file in `~/.config/nvim/lua/plugins/` with your plugin configuration:

```lua
return {
  "username/repo-name",
  config = function()
    -- Plugin configuration here
  end,
}
```

### Changing Color Scheme

Edit `~/.config/nvim/lua/plugins/colorscheme.lua` to use a different theme. The current theme is Ayu Dark. You can change to Ayu Mirage or Ayu Light by modifying the colorscheme line, or install a completely different theme plugin.

### Modifying Settings

Edit `~/.config/nvim/lua/settings.lua` to change Neovim options.

### Adding Key Mappings

Edit `~/.config/nvim/lua/keymaps.lua` to add or modify key mappings.

## Troubleshooting

### Plugins not loading
Run `:Lazy sync` to sync plugins.

### LSP not working
1. Check if the language server is installed: `:Mason`
2. Restart LSP: `<leader>rs`
3. Check LSP status: `:LspInfo`

### Treesitter issues
Run `:TSUpdate` to update parsers.

## Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [Mason](https://github.com/williamboman/mason.nvim)

## License

This configuration is free to use and modify.
