local opts = {noremap = true, silent = true}
local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

--Buffer navigation
map('n', 'L', ':bn<cr>', opts)
map('n', 'H', ':bp<cr>', opts)

--Split navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)

--Telescope
themes = require('telescope.themes')
builtin = require('telescope.builtin')
compact_dropdown = themes.get_dropdown{previewer = false}

map('n', '<C-p>', ":lua builtin.fd(compact_dropdown)<cr>", opts) 
