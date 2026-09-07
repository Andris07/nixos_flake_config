{
  imports =
  [
    ./hardware.nix
    ./filesystems.nix

    ../../modules/system/locale.nix
    ../../modules/system/networking.nix
    ../../modules/system/users.nix
    ../../modules/system/packages.nix

    ../../modules/boot/grub.nix
    
    ../../modules/hardware/amd.nix
  ];

  system.stateVersion = "26.05";
}