-- basics
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.wrap = false

-- shortcuts
-- set leader key to '<Space>'
vim.mapleader = " "
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>s', ':w!<cr>')
vim.keymap.set('n', '<leader>w', ':wq!<cr>')
vim.keymap.set('n', '<leader>q', ':q!<cr>')

vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<cr>')
-- vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<cr>')

-- lazy.nvim
require("config.lazy")
