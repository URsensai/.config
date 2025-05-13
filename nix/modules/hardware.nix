{ config, pkgs, ... }:

{
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
  services.xserver.videoDrivers = ["nvidia"];
  
  hardware.nvidia = {
    # Modesetting is required.
    modesetting.enable = true;
    # Enable this if you have graphical corruption issues or application crashes after waking
    powerManagement.enable = false;
    # Fine-grained power management. Turns off GPU when not in use.
    powerManagement.finegrained = false;
    # Only available from driver 515.43.04+
    open = false;
    # Enable the Nvidia settings menu,
    nvidiaSettings = true;
  };

  hardware.graphics.enable = true;

  #Audio settings for pipewire
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
 };
}