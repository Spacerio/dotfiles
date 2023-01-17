local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	update_in_insert = true,
})

lsp.setup_nvim_cmp({
	completion = {
		performance = {
			throttle = 2,
			debounce = 5,
		}
	}
})
