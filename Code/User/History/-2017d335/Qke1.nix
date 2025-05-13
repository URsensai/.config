{ config,pkgs }:

nixpkgs.config.allowUnfree = true;

[
  pkgs.fastfetch
  pkgs.git
  pkgs.wget
  pkgs.vscode
]