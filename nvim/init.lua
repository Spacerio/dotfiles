require('user.options')
require('user.keymaps')
require('user.plugins')

require('user.alpha') -- No lazyload
require('user.whichkey') -- No lazyload
require('user.impatient') -- No lazyload
require('user.autocommands') --No lazyload
vim.cmd("so ~/.config/nvim/firenvim.vim")

-- require('user.cmp')
-- require('user.lsp')
-- require('user.outline')
-- require('user.treesitter')
-- require('user.colorscheme')
-- require('user.rust-tools')
-- require('user.telescope')
-- require('user.autopairs')
-- require('user.comment')
-- require('user.gitsigns')
-- require "user.nvim-tree"
-- require('user.bufferline')
-- require('user.lualine')
-- require('user.toggleterm')
-- require('user.project')
-- require('user.indentline')
-- vim.cmd("so ~/.config/nvim/ghost.vim")
-- require('user.copilot')
