{pkgs, ...}: {
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
}
