{ config, pkgs, ... }:

let
  userPackages = import ./packages.nix { inherit pkgs; };
in
{
  home.username = "umakanth";
  home.homeDirectory = "/home/umakanth";
  home.stateVersion = "24.11"; # Or the latest Home Manager release tag
  home.packages = with pkgs; [ ] ++ userPackages;
}