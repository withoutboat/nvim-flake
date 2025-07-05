{
  description = "Flake-based Neovim config for Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = _: {
    homeManagerModules.default = let
 staticConfig = ''
    luafile ${builtins.toString ./lua/base.lua}
  '';
    in {
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
   	   config = builtins.readFile ./telescope/telescope.lua;
   	   optional = false;
   	 }
	 {
	      plugin = telescope-fzf-native-nvim;
	      optional = false;
	    }
	    {
	      plugin = telescope-ui-select-nvim;
	      optional = false;
	    }
	    {
	      plugin = telescope-file-browser-nvim;
	      optional = false;
	    }
      {
	      plugin = telescope-projects-nvim;
	      optional = false;
	    }
;
	      optional = false;
	    }


        ];

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
