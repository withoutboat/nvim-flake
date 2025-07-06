return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      nix = { "alejandra" },
      lua = { "stylua" },
    },
    format_on_save = function(bufnr)
      local clients = vim.lsp.get_active_clients({ bufnr = bufnr })
      if #clients > 0 then
        return { lsp_fallback = false }
      end
      return nil
    end,
  },
}
