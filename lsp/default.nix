{pkgs, ...}: {
  plugins = with pkgs.vimPlugins; [
    {
      plugin = nvim-lspconfig;
      type = "lua";
      config = builtins.readFile ./lsp.lua;
    }
    nvim-cmp
    cmp-nvim-lsp
    cmp-buffer
    cmp-path
    cmp-cmdline
    cmp_luasnip
    luasnip
    lspkind-nvim
    copilot-cmp
    copilot-lua
  ];

  extraPackages = with pkgs; [
    nixd
    lua-language-server
    nodePackages.typescript-language-server
    # rust-analyzer
    # clang-tools
  ];
}
