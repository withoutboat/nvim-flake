{ pkgs, ... }:
{
  plugins = with pkgs.vimPlugins; [
    {
      plugin =  conform-nvim;
      type = "lua";
      config = builtins.readFile ./conform.lua;
    }
  ];

  extraPackages = with pkgs; [
      alejandra
  stylua
  ];
}
