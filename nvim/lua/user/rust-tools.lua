local rt = require("rust-tools")

rt.setup({
	server = {
		on_attach = function(_, bufnr)
			-- Hover actions
			-- vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<Leader>A", rt.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})

local opts = {
	tools = {
		inlay_hints = {
			auto = false,
			show_parameter_hints = true,
			max_len_aling = true,
			max_len_aling_padding = 30,
			-- right_align = true,
			-- right_align_padding = 50,
		},
		hover_actions = {
			auto_focus = true,
		},
		dap = {
			adapter = {
				command = "lldb-vscode-11"
			}
		}
	},
}

require('rust-tools').setup(opts)


-- require('rust-tools').inlay_hints.enable()
