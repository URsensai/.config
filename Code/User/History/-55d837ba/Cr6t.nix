{ config, pkgs, ... }:

{
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    
    modsetting.enable = true;

    powerManagement.enable = true;

    powerManagement.finegrained = false;

    open = false;
    
    nvidiaSettings = true;
  };
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