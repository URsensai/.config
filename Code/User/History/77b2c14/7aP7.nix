{ pkgs, ... }:

{
  wayland.enable = true;
  xwayland.enable = true;

  programs.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    settings = {
      "$mainMod" = "SUPER";

      bind = [
        "$mainMod, Q, exec, kitty"
        "$mainMod, E, exec, dolphin"
        "$mainMod SHIFT, Q, killactive, "
        "$mainMod, M, fullscreen, 1"
        "$mainMod, P, exec, wlogout"
      ];

      windowrule = [
        "float, pavucontrol"
        "size 600 400, pavucontrol"
        "center, pavucontrol"
      ];

      layerrule = [
        "blur, wlogout"
      ];
    };
  };

  services.xdg-desktop-portal = {
    enable = true;
    backends = [ "hyprland" ];
  };
}