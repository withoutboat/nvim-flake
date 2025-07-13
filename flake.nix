{
  description = "Flake-based Neovim config for Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = {nixvim, ...}: {
    homeManagerModules.default = {...}: {
      imports = [
        nixvim.homeManagerModules.nixvim
	./telescope
      ];

      home.shellAliases.v = "nvim";

      programs.nixvim = {
        enable = true;
        defaultEditor = true;
	globals.mapleader = ";";

        nixpkgs.useGlobalPackages = true;

        # performance = {
        #   combinePlugins = {
        #     enable = true;
        #     standalonePlugins = [
        #       "hmts.nvim"
        #       "neorg"
        #       "nvim-treesitter"
        #     ];
        #   };
        #   byteCompileLua.enable = true;
        # };

        viAlias = true;
        vimAlias = true;

        luaLoader.enable = true;
      };
    };
  };
}
