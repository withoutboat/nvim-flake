{
  description = "Flake-based Neovim config for Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = _: {
    homeManagerModules.default = _: {
      imports = [
        ./telescope
        ./init-lua.nix
      ];

      programs.neovim = {
        enable = true;
      };
    };
  };
}
