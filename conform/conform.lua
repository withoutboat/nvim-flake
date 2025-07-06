require("conform").setup({
  formatters_by_ft = {
    nix = { "alejandra" },
    lua = { "stylua" },
    -- add more as needed
  },
  format_on_save = function(bufnr)
    -- Only format if there is at least one LSP client attached
    local clients = vim.lsp.get_active_clients({ bufnr = bufnr })
    return #clients > 0
  end,
})
