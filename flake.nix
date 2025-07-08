{
  description = "Flake-based Neovim config for Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {...}: {
    homeManagerModules.default = {pkgs, ...}: let
      staticConfig = ''
        luafile ${builtins.toString ./lua/base.lua}
      '';
      telescope = import ./telescope {inherit pkgs;};
      threesitter = import ./threesitter {inherit pkgs;};
      lsp = import ./lsp {inherit pkgs;};
      conform = import ./conform {inherit pkgs;};
      copilot = import ./copilot {inherit pkgs;};
    in {
      programs.neovim = {
        enable = true;
        viAlias = true;
        defaultEditor = true;

        plugins =
          telescope.plugins
          ++ threesitter.plugins
          ++ lsp.plugins
          ++ conform.plugins
          ++ copilot.plugins
          ++ (with pkgs.vimPlugins; [
            ]);

        extraPackages =
          lsp.extraPackages
          ++ conform.extraPackages
          ++ (with pkgs; [
            ripgrep
            fd
          ]);

        extraConfig = builtins.concatStringsSep "\n" [
          staticConfig
          # Add additional config strings here if needed
        ];
      };
    };
  };
}
