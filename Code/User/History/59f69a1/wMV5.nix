{ config, pkgs, ... }:

let
  userPackages = import ./packages.nix { inherit pkgs; };
in
{
  home = {
    username = "umakanth";
    homeDirectory = "/home/umakanth";
    packages = userPackages;
    stateVersion = "24.11"; # Or a specific version like "24.05"
  };
}