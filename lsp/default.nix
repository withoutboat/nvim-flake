{ pkgs, ... }:
{
  plugins = with pkgs.vimPlugins; [
    {
      plugin = nvim-lspconfig;
      type = "lua";
      config = builtins.readFile ./lsp.lua;
    }
    nixd
    lua_ls
    nvim-cmp
    cmp-nvim-lsp
    cmp-buffer 
    cmp-path
    cmp-cmdline luasnip
    lspkind-nvim
  ];

  extraPackages = with pkgs; [
    lua-language-server
    nodePackages.typescript-language-server
    nodePackages.pyright
    # rust-analyzer
    # clang-tools
    # Add more servers as needed
  ];
}
