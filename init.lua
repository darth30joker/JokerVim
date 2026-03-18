-- basics
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.showtabline = 2

-- Nerd font is not installed
vim.g.have_nerd_font = false

-- Don't show mode
vim.opt.showmode = false

-- white spaces
vim.opt.list = true
vim.opt.listchars = { tab = '> ', trail = '.', nbsp = '_' }

-- cursor line
vim.opt.cursorline = true

-- shortcuts
-- set leader key to '<Space>'
vim.mapleader = " "
vim.g.mapleader = " "

-- save, save & exit, exit without saving
vim.keymap.set('n', '<leader>s', ':w!<cr>')
vim.keymap.set('n', '<leader>w', ':wq!<cr>')
vim.keymap.set('n', '<leader>q', ':q!<cr>')

-- Nvim Tree
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<cr>')

-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<cr>')
-- vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<cr>')

-- lazy.nvim
require("config.lazy")
