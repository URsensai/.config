{ config, pkgs, ... }:

let
  userPackages = import modules/packages.nix { inherit pkgs; };
  nvidiaConfig = import modules/hardware.nix { inherit config, pkgs;}
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
}