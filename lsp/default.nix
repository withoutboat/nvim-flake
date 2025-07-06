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
        rev = "v1.12.2";
        sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="; # <-- get this from nix output
      };
    })

    (pkgs.vimUtils.buildVimPlugin {
      name = "copilot-cmp";
      src = pkgs.fetchFromGitHub {
        owner = "zbirenbaum";
        repo = "copilot-cmp";
        rev = "v1.0.0";
        sha256 = "sha256-BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB="; # <-- get this from nix output
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
