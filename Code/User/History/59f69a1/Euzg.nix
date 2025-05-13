{ config, pkgs, ... }:

{
  home.username = "umakanth";
  home.homeDirectory = "/home/umakanth";

  # Example: Install user-specific packages
  home.packages = [
    pkgs.neovim
    pkgs.tmux
    pkgs.fastfetch
  ];

  # Set the Home Manager release version
  home.stateVersion = "24.05"; # Or the latest Home Manager release tag
}