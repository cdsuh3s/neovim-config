-- Plugin Management
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
require("config.lazy")

-- Filetype-specific operation setup : enables
-- 1. filetype detection
-- 2. loading the plugins for specific filetypes
-- 3. loading the indent file for specific filetypes
vim.cmd([[filetype plugin indent on]])

-- Syntax Highlighting enable
vim.cmd([[syntax enable]])

-- General Settings
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Colorscheme
vim.cmd[[colorscheme tokyonight]]

-- Set-up plugins
require("config.neo-tree")

-- lualine.nvim setup
require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'auto',
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 100,
      tabline = 100,
      winbar = 100,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- plugins settings
require("config.LuaSnip")

-- Neovide Settings
if vim.g.neovide then
  vim.o.guifont = "cascadia code:h13"
end
