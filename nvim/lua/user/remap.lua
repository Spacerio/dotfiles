local opts = {noremap = true, silent = true}
local remap = {noremap = false, silent = true}
local map = vim.api.nvim_set_keymap

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

--Buffer navigation
map('n', 'L', ':bn<cr>', opts)
map('n', 'H', ':bp<cr>', opts)

--Split navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)

--Source files wih keymap
map('n', '<leader>s', ':so<cr>', opts)


--Telescope
themes = require('telescope.themes')
builtin = require('telescope.builtin')
compact_dropdown = themes.get_dropdown{previewer = false}

map('n', '<C-p>', ":lua builtin.fd(compact_dropdown)<cr>", opts) 
map('n', '<C-n>', ":Telescope builtin<cr>", opts)
map('n', '<leader>f', ":lua builtin.live_grep(themes.get_ivy())<cr>", opts)

--Lazy.nvim
map('n', '<leader>l', ':Lazy<cr>', opts)


--Temp ones for debugging 
