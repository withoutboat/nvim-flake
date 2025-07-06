{
  description = "Flake-based Neovim config for Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {pkgs,...}: {
    homeManagerModules.default = let
 staticConfig = ''
    luafile ${builtins.toString ./lua/base.lua}
  '';

  telescope = import ./telescope/default.nix { inherit pkgs; };
    in {
      pkgs,
      lib, ... }:  {
      programs.neovim = {
        enable = true;
        viAlias = true;
	defaultEditor = true;

        plugins = telescope.plugins
        ++ with pkgs.vimPlugins; [];

        extraPackages = with pkgs; [
            ripgrep
    		fd 
        ];

	extraConfig = builtins.concatStringsSep "\n" (
      [ staticConfig ] 
    );
      };
    };
  };
}
