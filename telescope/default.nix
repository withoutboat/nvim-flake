{
  pkgs,
  config,
  ...
}: {
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      telescope-nvim
      telescope-fzf-native-nvim
      telescope-file-browser-nvim
    ];
    extraPackages = with pkgs; [ripgrep fd];
  };

  xdg.configFile."nvim/lua/${config.home.username}/telescope.lua".source = ./telescope.lua;
}
