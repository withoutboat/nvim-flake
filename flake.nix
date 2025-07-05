{
  description = "Flake-based Neovim config for Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = _: {
    homeManagerModules.default = {
      pkgs,
      lib, ... }:  {
      programs.neovim = {
        enable = true;
        viAlias = true;
	defaultEditor = true;

        plugins = with pkgs.vimPlugins; [
   	 {
   	   plugin = telescope-nvim;
   	   type = "lua";
   	   config = builtins.readFile ./telescope.lua;
   	   optional = true;
   	 }
	 {
	      plugin = telescope-fzf-native-nvim;
	      optional = true;
	    }
	    {
	      plugin = telescope-ui-select-nvim;
	      optional = true;
	    }
	    {
	      plugin = telescope-file-browser-nvim;
	      optional = true;
	    }

        ];

        extraPackages = with pkgs; [
            ripgrep
    		fd 
        ];
      };
    };
  };
}
