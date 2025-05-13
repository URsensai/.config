{ config, pkgs, inputs, ... }:

let
  userPackages = import ./modules/packages.nix { inherit pkgs; };
  hyprlandModule = import ./modules/hyprland.nix { inherit pkgs; }; # Import the Hyprland module
in
{
  #allow unfree software
  nixpkgs.config.allowUnfree = true;

  #usere config
  home.username = "umakanth";
  home.homeDirectory = "/home/umakanth";
  
  home.stateVersion = "24.11"; # Or the latest Home Manager release tag
  
  #install packages in packages.nix
  home.packages = with pkgs; [ ] ++ userPackages;

  imports = [ ./modules/hyprland.nix ];
}