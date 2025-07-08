{pkgs, ...}: {
  plugins = with pkgs.vimPlugins; [
    {
      plugin = copilotchat-nvim;
      type = "lua";
      config = builtins.readFile ./copilot.lua;
    }
    copilot-cmp
    copilot-lua
    plenary-nvim
  ];

  extraPackages = with pkgs; [];
}
