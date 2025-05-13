{config, pkgs, .... }:
{
  programs.firefox.enable = true;
  [
    pkgs.fastfetch
    pkgs.git
    pkgs.wget
    pkgs.vscode
    pkgs.lshw
  ]
}