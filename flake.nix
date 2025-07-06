{
  description = "Flake-based Neovim config for Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }: {
    homeManagerModules.default = { pkgs, lib, ... }: 
      let
        staticConfig = ''
          luafile ${builtins.toString ./lua/base.lua}
        '';
        telescope = import ./telescope/default.nix { inherit pkgs; };
      in {
        programs.neovim = {
          enable = true;
          viAlias = true;
          defaultEditor = true;

          plugins = telescope.plugins
            ++ (with pkgs.vimPlugins; [
              # Add additional plugins here if needed
            ]);

          extraPackages = telescope.extraPackages
            ++ (with pkgs; [
              # Add additional tools here if needed
            ]);

          extraConfig = builtins.concatStringsSep "\n" [
            staticConfig
            # Add additional config strings here if needed
          ];
        };
      };
  };
}
