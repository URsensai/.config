{ config, pkgs, ... }:

{
  home-manager.users.umakanth = {
    imports = [../user.nix ]; # Adjust path as needed
    home.username = "umakanth";
    home.homeDirectory = "/home/umakanth";
  };
}