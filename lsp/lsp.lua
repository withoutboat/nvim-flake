local lspconfig = require("lspconfig")

local function define_signs(signs)
	for _, sign in ipairs(signs) do
		vim.fn.sign_define(sign.name, { text = sign.text, texthl = sign.name })
	end
end

-- Default signs (for Lua, etc.)
local default_signs = {
	{ name = "DiagnosticSignError", text = "" },
	{ name = "DiagnosticSignWarn", text = "" },
	{ name = "DiagnosticSignHint", text = "" },
	{ name = "DiagnosticSignInfo", text = "" },
}

define_signs(default_signs)

vim.diagnostic.config({
	signs = { active = true, values = default_signs },
	virtual_text = true,
	update_in_insert = false,
})

lspconfig.lua_ls.setup({})
lspconfig.nixd.setup({})
