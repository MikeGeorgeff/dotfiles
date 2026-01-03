-- Mason for managing LSP servers, formatters, and linters
return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "pyright",
        "ts_ls",
        "html",
        "cssls",
        "rust_analyzer",
        "gopls",
        "intelephense", -- PHP
        "jsonls", -- JSON
        "yamlls", -- YAML
        "bashls", -- Bash
        "marksman", -- Markdown
        "ansiblels", -- Ansible
        "dockerls", -- Dockerfile
        "docker_compose_language_service", -- Docker Compose
        "terraformls", -- Terraform
        "tflint", -- Terraform linter
      },
      automatic_installation = true,
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",
        "stylua",
        "isort",
        "black",
        "eslint_d",
        "rustfmt",
        "gofmt",
        "php-cs-fixer",
        "shfmt", -- Bash formatter
        "terraform-ls", -- Terraform
        "ansible-lint", -- Ansible linter
      },
    })
  end,
}
