{config, pkgs, ... }:
{
  programs.firefox.enable = true;

  home.packages = with pkgs; [
    fastfetch
    git
    wget
    vscode
    lshw
  ];

}