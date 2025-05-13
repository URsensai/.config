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

      #exec-once = [
        #"${pkgs.lxqt-policykit}/bin/lxqt-policykit-agent"
        # Add other autostart applications here
      #];
    };
  };
}