local lspconfig = require("lspconfig")

-- Helper: enable format on save and :Format command for formatting-capable clients
local function enable_format_on_attach(client, bufnr)
  if client and client.server_capabilities and client.server_capabilities.documentFormattingProvider then
    -- Add :Format command for this buffer
    vim.api.nvim_buf_create_user_command(bufnr, "Format", function()
      vim.lsp.buf.format { async = true }
    end, { desc = "Format current buffer with LSP" })

    -- Auto-format on save
    local group = vim.api.nvim_create_augroup("LspFormatting" .. bufnr, { clear = true })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = group,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format { async = false }
      end,
    })
  end
end

lspconfig.lua_ls.setup({})
lspconfig.nixd.setup({})
