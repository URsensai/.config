{ config, pkgs, ... }:

let
  userPackages = import ./packages.nix { inherit pkgs; };
in
{
  home = {
    username = "umakanth";
    homeDirectory = "/home/umakanth";
    packages = userPackages;
    stateVersion = config.home-manager.version; # Or a specific version like "24.05"
  };
}