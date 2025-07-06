{pkgs, ...}: {
  plugins = with pkgs.vimPlugins; [
    {
      plugin = telescope-nvim;
      type = "lua";
      config = builtins.readFile ./telescope.lua;
    }
    {
      plugin = telescope-fzf-native-nvim;
    }
    {
      plugin = telescope-ui-select-nvim;
    }
    {
      plugin = telescope-file-browser-nvim;
    }
  ];
}
