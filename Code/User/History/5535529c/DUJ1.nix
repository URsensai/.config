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
        "wind, -1.05, 0.9, 0.1, 1.05"
        "winIn, -1.1, 1.1, 0.1, 1.1"
        "winOut, -1.3, -0.3, 0, 1"
        "liner, 0, 1, 1, 1"
        ];
      };

      animation = [
        "windows, 0, 6, wind, slide"
        "windowsIn, 0, 6, winIn, slide"
        "windowsOut, 0, 5, winOut, slide"
        "windowsMove, 0, 5, wind, slide"
        "border, 0, 1, liner"
        "fade, 0, 10, default"
        "workspaces, 0, 5, wind"
      ];
      
      exec-once = [
        "lxqt-policykit-agent"
      ];
    };
  };
}