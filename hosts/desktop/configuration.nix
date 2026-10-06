{
  imports =
  [
    ./filesystems.nix
    ./hardware.nix

    ../../modules/boot/grub.nix
    ../../modules/boot/kernel.nix
    
    ../../modules/hardware/amd.nix

    ../../modules/system/locale.nix
    ../../modules/system/networking.nix
    ../../modules/system/nix.nix
    ../../modules/system/packages.nix
    ../../modules/system/users.nix
    ../../modules/system/zram.nix
  ];
  
  networking.hostName = "desktop";
  system.stateVersion = "26.05";
}