{ config, pkgs, ... }:

{
  home.username = "umakanth";
  home.homeDirectory = "/home/umakanth";

  home.packages = [
    pkgs.neovim
    pkgs.tmux
    pkgs.fastfetch
  ];

  home.stateVersion = "24.11"; # Or the latest Home Manager release tag
}