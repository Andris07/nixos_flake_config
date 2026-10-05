{
  imports =
  [
    ./hardware.nix
    ./filesystems.nix

    ../../modules/boot/grub.nix
    
    ../../modules/hardware/amd.nix

    ../../modules/system/locale.nix
    ../../modules/system/networking.nix
    ../../modules/system/nix.nix
    ../../modules/system/packages.nix
    ../../modules/system/users.nix
  ];

  system.stateVersion = "26.05";
}