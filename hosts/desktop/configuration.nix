{
  imports =
  [
    ../common.nix

    ./filesystems.nix
    ./hardware.nix

    ../../modules/boot/grub.nix

    ../../modules/hardware/amd.nix
  ];

  networking.hostName = "desktop";
  system.stateVersion = "26.05";
}
