{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "reddy";
  networking.networkmanager.enable = true;
  time.timeZone = "Asia/Kolkata";
  i18n.defaultLocale = "en_IN";
  i18n.extraLocaleSettings = { /* ... */ };

  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true; # Or gdm if that was your default
  # services.xserver.displayManager.sddm.wayland.enable = true; # Disable Wayland DM if you had it
  # services.xserver.desktopManager.gnome.enable = true; # Uncomment if you want to try GNOME again

  environment.systemPackages = with pkgs; [
    # wayland # Remove
    # wlroots.unstable # Remove
    # Potentially other system-level utilities
  ]; 

  # Sound (revert to default, likely PulseAudio)
  hardware.pulseaudio.enable = true;
  security.rtkit.enable = false;
  services.pipewire.enable = false;

  # Bluetooth (revert to default, likely disabled or basic)
  hardware.bluetooth.enable = false;
  services.blueman.enable = false;

  nixpkgs.config.allowUnfree = true;
  programs.nix-ld.enable = true;
  services.openssh.enable = true;
  system.stateVersion = "24.11";

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  home-manager.users.umakanth = {
    imports = [ ./home.nix ];
  };
}