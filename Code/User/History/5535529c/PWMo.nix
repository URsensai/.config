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
        "$modifier,left,movefocus,l"
        "$modifier,right,movefocus,r"
        "$modifier,up,movefocus,u"
        "$modifier,down,movefocus,d"
        "$modifier,h,movefocus,l"
        "$modifier,l,movefocus,r"
        "$modifier,k,movefocus,u"
        "$modifier,j,movefocus,d"
        "$modifier,1,workspace,1"
        "$modifier,2,workspace,2"
        "$modifier,3,workspace,3"
        "$modifier,4,workspace,4"
        "$modifier,5,workspace,5"
        "$modifier,6,workspace,6"
        "$modifier,7,workspace,7"
        "$modifier,8,workspace,8"
        "$modifier,9,workspace,9"
        "$modifier,0,workspace,10"
        "$modifier SHIFT,1,movetoworkspace,1"
        "$modifier SHIFT,2,movetoworkspace,2"
        "$modifier SHIFT,3,movetoworkspace,3"
        "$modifier SHIFT,4,movetoworkspace,4"
        "$modifier SHIFT,5,movetoworkspace,5"
        "$modifier SHIFT,6,movetoworkspace,6"
        "$modifier SHIFT,7,movetoworkspace,7"
        "$modifier SHIFT,8,movetoworkspace,8"
        "$modifier SHIFT,9,movetoworkspace,9"
        "$modifier SHIFT,0,movetoworkspace,10"
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
        "windows, 1, 1, wind, gnomed"
        "windowsIn, 1, 1, winIn, gnomed"
        "windowsOut, 1, 1, winOut, slide"
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