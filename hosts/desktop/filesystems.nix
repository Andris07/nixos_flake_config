let
  rootDevice = "/dev/disk/by-uuid/ed069aaa-12fa-4644-ac6f-e41fbf79bc11";

  btrfsOptions =
  [
    "compress=zstd"
    "noatime"
  ];
in
{
  fileSystems."/" =
  {
    device = rootDevice;
    fsType = "btrfs";
    options = [ "subvol=@" ] ++ btrfsOptions;
  };

  fileSystems."/home" =
  {
    device = rootDevice;
    fsType = "btrfs";
    options = [ "subvol=@home" ] ++ btrfsOptions;
  };

  fileSystems."/nix" =
  {
    device = rootDevice;
    fsType = "btrfs";
    options = [ "subvol=@nix" ] ++ btrfsOptions;
  };

  fileSystems."/var/log" =
  {
    device = rootDevice;
    fsType = "btrfs";
    options = [ "subvol=@log" ] ++ btrfsOptions;
    neededForBoot = true;
  };

  fileSystems."/boot" =
  {
    device = "/dev/disk/by-uuid/1065-3E0E";
    fsType = "vfat";
    options =
    [
      "fmask=0022"
      "dmask=0022"
    ];
  };

  swapDevices = [ ];
}