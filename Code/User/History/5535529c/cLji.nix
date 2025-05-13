{ config, pkgs, ... }:

{

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    xwayland = {
      enable = true;
    };
    settings = {
      "$mainMod" = "SUPER";
      bind = [
        "$mainMod, Q, exec, kitty"
        "$mainMod, E, exec, dolphin"
        "$mainMod SHIFT, Q, killactive, "
        "$mainMod, M, fullscreen, 1"
        "$mainMod, F, exec, firefox"
        "$mainMod, C, exec,  code"
      ];
      windowrule = [
      ];
      layerrule = [
        "blur, wlogout"
      ];

      # Configure your monitors here
      monitor = [
        # Example for a single monitor. Replace with your actual monitor name and desired scale.
        # You can get your monitor name using 'wlr-randr' in the terminal.
        "eDP-1,1920x1080@60,auto,1.0"
        # Add more monitor lines if you have multiple displays.
        # "HDMI-A-1,1920x1080@60,auto,1.0"
      ];

      animations = {
        enabled = true;
      bezier = [
        "wind, 0, 0.33, 0.14, 0.53 "
        "winIn, 0, 0.33, 0.14, 0.53 "
        "winOut, 0, 0.33, 0.14, 0.53 "
        "liner, 0, 1, 1, 1"
        ];
      };
      animation = [
        "windows, 1, 2, wind, slide"
        "windowsIn, 1, 2, winIn, slide"
        "windowsOut, 1, 5, winOut, slide"
        "windowsMove, 1, 5, wind, slide"
        "border, 1, 1, liner"
        "fade, 1, 10, default"
        "workspaces, 1, 5, wind"
      ];
      
      exec-once = [
        "lxqt-policykit-agent"
      ];
    };
  };
}