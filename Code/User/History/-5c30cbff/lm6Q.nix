{ config, pkgs, ... }:

{
  home-manager.users.umakanth = {
    imports = [ .config/nix/user.nix ]; # Adjust path as needed
    home.username = "umakanth";
    home.homeDirectory = "/home/umakanth";
  };
}