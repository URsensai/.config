{ config, pkgs, ... }:

let
  hyprlandConfig = import ./hyprland.nix { inherit pkgs; };
in
{
  imports = [
    hyprlandConfig
  ];

  home.username = "umakanth";
  home.homeDirectory = "/home/umakanth";
  # home.packages = ; # Packages are now mostly in configuration.nix
  home.stateVersion = "24.05";
}