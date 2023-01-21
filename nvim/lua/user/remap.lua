local opts = {noremap = true, silent = true}
local remap = {silent = true}
local map = vim.api.nvim_set_keymap

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

--plugin specific
map('n', '<leader>l', ':Lazy<cr>', opts)
map('n', '<leader>h', ':<cr>', opts)
map('n', '<leader>e', ':Neotree toggle<cr>', opts)

--Buffer navigation
map('n', 'L', ':bn<cr>', opts)
map('n', 'H', ':bp<cr>', opts)

--Split navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)

--Better C-u and C-d
map('n', '<C-d>', '<C-d>zz', opts)
map('n', '<C-u>', '<C-u>zz', opts)


--Source files wih keymap
map('n', '<leader>s', ':so<cr>', opts)

--Telescope
themes = require('telescope.themes')
builtin = require('telescope.builtin')
compact_dropdown = themes.get_dropdown{previewer = false}
extensions = require('telescope').extensions

map('n', '<C-p>', ":lua builtin.fd(compact_dropdown)<cr>", opts)
map('n', '<C-n>', ":Telescope builtin<cr>", opts)
map('n', '<C-g>', ":lua builtin.live_grep(themes.get_ivy())<cr>", opts)
map('n', '<C-f>', ":lua extensions.frecency.frecency(compact_dropdown)<cr>", opts)

--Lsp
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', remap)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', remap)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', remap)
map('n', 'gI', '<cmd>lua vim.lsp.buf.implementation()<cr>', remap)
map('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', remap)
map('n', 'gr', '<cmd>lua builtin.lsp_references()<cr>', remap)
--map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', remap)
map('n', 'gh', '<cmd>lua vim.lsp.buf.rename()<cr>', remap)
map('n', '<gs>', '<cmd>lua vim.lsp.buf.code_action()<cr>', remap)
map('x', '<gs>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>', remap)
-- Diagnostics
map('n', 'gl', '<cmd>troubletoggle<cr>', remap)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', remap)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', remap)

--Terminal window, visual glitches
map('n', '<leader>t', ':vs<cr>:terminal<cr>i', opts)
