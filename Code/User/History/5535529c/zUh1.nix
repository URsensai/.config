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
        "$mainMod,Return,exec,kitty"
        "$mainMod, E, exec, dolphin"
        "$mainMod, Q, killactive, "
        "$mainMod, M, fullscreen, 1"
        "$mainMod, F, exec, firefox"
        "$mainMod, C, exec,  code"
        "$mainMod, R, exec,  rofi -show drun"
        "$mainMod,left,movefocus,l"
        "$mainMod,right,movefocus,r"
        "$mainMod,up,movefocus,u"
        "$mainMod,down,movefocus,d"
        "$mainMod,h,movefocus,l"
        "$mainMod,l,movefocus,r"
        "$mainMod,k,movefocus,u"
        "$mainMod,j,movefocus,d"
        "$mainMod,1,workspace,1"
        "$mainMod,2,workspace,2"
        "$mainMod,3,workspace,3"
        "$mainMod,4,workspace,4"
        "$mainMod,5,workspace,5"
        "$mainMod,6,workspace,6"
        "$mainMod,7,workspace,7"
        "$mainMod,8,workspace,8"
        "$mainMod,9,workspace,9"
        "$mainMod,0,workspace,10"
        "$mainMod SHIFT,1,movetoworkspace,1"
        "$mainMod SHIFT,2,movetoworkspace,2"
        "$mainMod SHIFT,3,movetoworkspace,3"
        "$mainMod SHIFT,4,movetoworkspace,4"
        "$mainMod SHIFT,5,movetoworkspace,5"
        "$mainMod SHIFT,6,movetoworkspace,6"
        "$mainMod SHIFT,7,movetoworkspace,7"
        "$mainMod SHIFT,8,movetoworkspace,8"
        "$mainMod SHIFT,9,movetoworkspace,9"
        "$mainMod SHIFT,0,movetoworkspace,10"
        ",XF86AudioRaiseVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        " ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioPlay, exec, playerctl play-pause"
        ",XF86AudioPause, exec, playerctl play-pause"
        ",XF86AudioNext, exec, playerctl next"
        ",XF86AudioPrev, exec, playerctl previous"
        ",XF86MonBrightnessDown,exec,brightnessctl set 5%-"
        ",XF86MonBrightnessUp,exec,brightnessctl set +5%"
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
        "windows, 1, 2, wind, gnomed"
        "windowsIn, 1, 2, winIn, gnomed"
        "windowsOut, 1, 2, winOut, slide"
        "windowsMove, 1, 1, wind, slide"
        "border, 1, 1, liner"
        "fade, 1, 1, default"
        "workspaces, 1, 1, wind"
      ];
      
      exec-once = [
        "lxqt-policykit-agent"
      ];
    };
  };
}