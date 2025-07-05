{
  description = "Flake-based Neovim config for Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = _: {
    homeManagerModules.default = {
      pkgs,
      lib,
    }: let
      telescope = import ./telescope {inherit pkgs;};
    in {
      programs.neovim = {
        enable = true;
        viAlias = true;

        plugins = lib.mkMerge [
          telescope.plugins
        ];

        extraPackages = lib.mkMerge [
          telescope.extraPackages
        ];
      };
    };
  };
}
