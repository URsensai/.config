{ config, pkgs, ... }:

let
  userPackages = import .packages.nix {inherit pkgs;};
in
{
  home.Packages = with pkgs; [ ]++ userPackages; 
  home.username = "umakanth";
  home.homeDirectory = "/home/umakanth";
  home.stateVersion = "24.05"; # Or the latest Home Manager release tag
}