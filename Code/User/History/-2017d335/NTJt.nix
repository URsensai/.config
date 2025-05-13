{ pkgs }:

environment.systemPackages = with pkgs;[
  pkgs.fastfetch
  pkgs.git
  pkgs.wget
]