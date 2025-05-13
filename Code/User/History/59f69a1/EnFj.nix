{ config, pkgs, ... }:

{
  home.username = "umakanth";
  home.homeDirectory = "/home/umakanth";

  # Example: Install user-specific packages
  home.packages = [
    pkgs.neovim
    pkgs.tmux
  ];

  # Example: Configure shell aliases
  shellAliases = {
    ll = "ls -lha";
    nvim = "nvim";
  };

  # Set the Home Manager release version
  home.stateVersion = "24.05"; # Or the latest Home Manager release tag
}