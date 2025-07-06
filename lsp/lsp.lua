local lspconfig = require("lspconfig")

local diagnostic_config = {
	signs = {
		active = true,
		values = {
			{ name = "DiagnosticSignError", text = "" },
			{ name = "DiagnosticSignWarn", text = "" },
			{ name = "DiagnosticSignHint", text = "" },
			{ name = "DiagnosticSignInfo", text = "" },
		},
	},
	virtual_text = true,
	update_in_insert = false, -- Keep signs visible in insert mode
}

vim.diagnostic.config(diagnostic_config)

lspconfig.lua_ls.setup({})
lspconfig.nixd.setup({})
