{ config, pkgs, ... }:

let
  userPackages = import ./packages.nix { inherit pkgs; };
  hyprlandConfig = import ./hyprland.nix { inherit pkgs; };
in
{
  imports = [
    hyprlandConfig
  ];

  home = {
    username = "umakanth";
    homeDirectory = "/home/umakanth";
    packages = userPackages;
    stateVersion = "24.11"; # Make sure this matches your Home Manager version
  };
}