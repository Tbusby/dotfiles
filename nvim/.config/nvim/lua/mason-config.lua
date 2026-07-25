-- ============================================================================
-- MASON - Auto-install LSP, linters & formatters
-- ============================================================================
local mason_tool_installer = require("mason-tool-installer")

mason_tool_installer.setup({
  ensure_installed = {
    -- LSP
    "lua-language-server",
    "pyright",
    "bash-language-server",
    "typescript-language-server",
    "gopls",
    "clangd",
    "yaml-language-server",
    "docker-language-server",
    "terraform-ls",
    "ansible-language-server",

    -- Formatters
    "stylua",
    "black",
    "prettierd",
    "shfmt",
    "clang-format",
    "gofumpt",

    -- Linters
    "luacheck",
    "flake8",
    "eslint_d",
    "shellcheck",
    "cpplint",
    "revive",
    "yamllint",
    "hadolint",
    "ansible-lint",

    -- Misc
    "fixjson",
  },
  auto_update = false,
  run_on_start = true,
})
