{
  fileSystems."/" =
  {
    device = "/dev/disk/by-uuid/ed069aaa-12fa-4644-ac6f-e41fbf79bc11";
    fsType = "btrfs";
    options =
    [
      "subvol=@"
    ];
  };

  fileSystems."/home" =
  {
    device = "/dev/disk/by-uuid/ed069aaa-12fa-4644-ac6f-e41fbf79bc11";
    fsType = "btrfs";
    options =
    [
      "subvol=@home"
    ];
  };

  fileSystems."/nix" =
  {
    device = "/dev/disk/by-uuid/ed069aaa-12fa-4644-ac6f-e41fbf79bc11";
    fsType = "btrfs";
    options =
    [
      "subvol=@nix"
    ];
  };

  fileSystems."/log" =
  {
    device = "/dev/disk/by-uuid/ed069aaa-12fa-4644-ac6f-e41fbf79bc11";
    fsType = "btrfs";
    options =
    [
      "subvol=@log"
    ];
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