require('mason').setup()

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_remaps = function(bufnr)
	local map = function(m, lhs, rhs)
		local opts = {remap = true, silent = true, buffer = bufnr}
		vim.keymap.set(m, lhs, rhs, opts)
	end

	map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
	map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
	map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
	map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
	map('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
	map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
	--map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
	map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
	map('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
	map('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')
	map('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
	map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
	map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
end

local lsp_attach = function()

end

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({
			on_attach = lsp_attach,
			capabilities = lsp_capabilities,
		})
	end,
})


local signs = {
	{ name = "DiagnosticSignError", text = "" },
	{ name = "DiagnosticSignWarn", text = "" },
	{ name = "DiagnosticSignHint", text = "" },
	{ name = "DiagnosticSignInfo", text = "" },
}


for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local config = {
	virtual_text = false,
	signs = {
		active = signs,
	},
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
}

vim.diagnostic.config(config)

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "rounded",
	width = 60,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = "rounded",
	width = 60,
})
