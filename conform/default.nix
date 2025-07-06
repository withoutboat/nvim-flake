{ pkgs, ... }:
{
  plugins = with pkgs.vimPlugins; [
    {
      plugin = conform;
      type = "lua";
      config = builtins.readFile ./conform.lua;
    }
  ];
}
