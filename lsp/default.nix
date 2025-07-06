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

    (pkgs.vimUtils.buildVimPlugin {
      name = "copilot-lua";
      src = pkgs.fetchFromGitHub {
        owner = "zbirenbaum";
        repo = "copilot.lua";
        rev = "46f4b7d026cba9497159dcd3e6aa61a185cb1c48";
        sha256 = "sha256-p4kZBoa0GMV1s4gNfQ3i2ZTVN8RNxOi3EJ7pH6nw6qk";
      };
    })

    (pkgs.vimUtils.buildVimPlugin {
      name = "copilot-cmp";
      src = pkgs.fetchFromGitHub {
        owner = "zbirenbaum";
        repo = "copilot-cmp";
        rev = "e8c0e4c4b2d1e4edb8f3b7d3d2f0c6a4d3d81fd4";
        sha256 = "sha256-erRL8bY/zuwuCZfttw+avTrFV7pjv2H6v73NzY2bymM=";
      };
    })
  ];

  extraPackages = with pkgs; [
    nixd
    lua-language-server
    nodePackages.typescript-language-server
    # rust-analyzer
    # clang-tools
  ];
}
