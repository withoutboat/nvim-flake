return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      nix = { "alejandra" },
      lua = { "stylua" },
    },
    format_on_save = { lsp_fallback = true },
    notify_on_error = true,
  },
}
