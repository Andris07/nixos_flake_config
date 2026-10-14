{
  imports =
  [
    ../common.nix

    ./disko.nix
    ./hardware.nix

    ../../modules/boot/grub.nix
    ../../modules/hardware/amd.nix
  ];

  networking.hostName = "laptop";

  # Disko manages the unencrypted EFI partition and the LUKS2-encrypted Btrfs
  # filesystem, including /, /home, /var/log, /nix, /games and a Btrfs swapfile.
  # zramSwap remains enabled through hosts/common.nix as a fast first tier.
  system.stateVersion = "26.05";
}
