{pkgs, ...}: {
  plugins = with pkgs.vimPlugins; [
    {
      plugin = copilot-lua;
      type = "lua";
      config = builtins.readFile ./copilot.lua;
    }
    copilot-cmp
    plenary-nvim
  ];

  extraPackages = with pkgs; [copilotchat-nvim];

  extraPython3Packages = p: [
    p.python-dotenv
    p.requests
    p.prompt-toolkit
    p.tiktoken
  ];
}
