-- ============================================================================
-- WHICH-KEY
-- ============================================================================
require("which-key").setup({
  preset = "modern",
  delay = 300,
  icons = {
    breadcrumb = "»",
    separator = "➜",
    group = "+",
    rules = false,
  },
  win = {
    no_overlap = true,
    padding = { 1, 2 },
    border = "rounded",
    title = true,
    title_pos = "center",
  },
  layout = {
    width = { min = 20, max = 50 },
    spacing = 3,
  },
  sort = { "local", "order", "group", "alphanum", "mod" },
  expand = 0,
  spec = {
    { "<leader>t", group = "toggle" },
    { "<leader>f", group = "find/fzf" },
    { "<leader>g", group = "goto" },
    { "<leader>b", group = "buffer" },
    { "<leader>c", group = "clear" },
    { "<leader>d", group = "diagnostic" },
    { "<leader>e", group = "explorer" },
    { "<leader>h", group = "git-hunk" },
    { "<leader>n", group = "next" },
    { "<leader>p", group = "paste/path" },
    { "<leader>r", group = "rename" },
    { "<leader>s", group = "split" },
    { "<leader>x", group = "delete" },
    { "<leader>o", group = "organize" },
  },
})

local wk = require("which-key")

wk.add({
  -- toggle
  { "<leader>tw", desc = "Toggle word wrap" },
  { "<leader>td", desc = "Toggle diagnostics" },
  { "<leader>t",  desc = "Floating terminal" },

  -- find/fzf
  { "<leader>ff", desc = "FZF Files" },
  { "<leader>fg", desc = "FZF Live Grep" },
  { "<leader>fb", desc = "FZF Buffers" },
  { "<leader>fh", desc = "FZF Help Tags" },
  { "<leader>fx", desc = "FZF Diagnostics Document" },
  { "<leader>fX", desc = "FZF Diagnostics Workspace" },

  -- git/goto
  { "<leader>gd", desc = "LSP Definitions (fzf)" },
  { "<leader>gD", desc = "LSP Definition" },
  { "<leader>gS", desc = "LSP Definition (vsplit)" },

  -- buffer
  { "<leader>bn", desc = "Next buffer" },
  { "<leader>bp", desc = "Previous buffer" },

  -- clear
  { "<leader>c", desc = "Clear search highlights" },

  -- diagnostic
  { "<leader>nd", desc = "Next diagnostic" },
  { "<leader>pd", desc = "Prev diagnostic" },
  { "<leader>D",  desc = "Line diagnostics float" },
  { "<leader>d",  desc = "Cursor diagnostics float" },
  { "<leader>dl", desc = "Show line diagnostics" },
  { "<leader>q",  desc = "Open diagnostic list" },

  -- explorer
  { "<leader>e", desc = "Toggle NvimTree" },

  -- git-hunk
  { "<leader>hs", desc = "Stage hunk" },
  { "<leader>hp", desc = "Preview diff overlay" },
  { "<leader>hb", desc = "Git blame/show" },

  -- code
  { "<leader>ca", desc = "Code action" },
  { "<leader>rn", desc = "Rename" },
  { "<leader>oi", desc = "Organize imports" },

  -- references/find
  { "<leader>fr", desc = "LSP References" },
  { "<leader>ft", desc = "LSP Type Defs" },
  { "<leader>fs", desc = "LSP Document Symbols" },
  { "<leader>fw", desc = "LSP Workspace Symbols" },
  { "<leader>fi", desc = "LSP Implementations" },

  -- split
  { "<leader>sv", desc = "Split vertically" },
  { "<leader>sh", desc = "Split horizontally" },

  -- misc
  { "<leader>pa", desc = "Copy file path" },
  { "<leader>p",  desc = "Paste without yanking", mode = "x" },
  { "<leader>x",  desc = "Delete without yanking", mode = { "n", "v" } },
})

-- tokyonight-matched highlight overrides
local colors = {
  bg       = "#1a1b26",
  bg_dark  = "#16161e",
  fg      = "#c0caf5",
  blue    = "#7aa2f7",
  cyan    = "#7dcfff",
  green   = "#9ece6a",
  magenta = "#bb9af7",
  red     = "#f7768e",
  yellow  = "#e0af68",
  orange  = "#ff9e64",
}

vim.api.nvim_set_hl(0, "WhichKey",           { fg = colors.magenta })
vim.api.nvim_set_hl(0, "WhichKeyGroup",      { fg = colors.blue })
vim.api.nvim_set_hl(0, "WhichKeyDesc",       { fg = colors.fg })
vim.api.nvim_set_hl(0, "WhichKeySeparator",  { fg = colors.cyan })
vim.api.nvim_set_hl(0, "WhichKeyFloat",      { bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "WhichKeyBorder",     { fg = colors.blue })
vim.api.nvim_set_hl(0, "WhichKeyTitle",      { fg = colors.blue, bold = true })
