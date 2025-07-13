{
  description = "Flake-based Neovim config for Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {nixvim, ...}: {
    homeManagerModules.default = {...}: {
      imports = [
        nixvim.homeManagerModules.nixvim
      ];

      home.shellAliases.v = "nvim";

      programs.nixvim = {
        enable = true;
        defaultEditor = true;

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
