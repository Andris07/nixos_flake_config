{ pkgs, ... }:

{
  # System

  system.stateVersion = "26.05";

  time.timeZone = "Europe/Budapest";

  i18n.defaultLocale = "hu_HU.UTF-8";

  console =
  {
    font = "Lat2-Terminus16";
    keyMap = "hu";
  };

  # Boot

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.useOSProber = true;

  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Networking

  networking.networkmanager.enable = true;

  # User

  users.users.andris =
  {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  # Packages

  environment.systemPackages = with pkgs;
  [
    vim
    wget
    git
    gh
    tree
  ];
}