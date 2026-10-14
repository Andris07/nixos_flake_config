{
  disko.devices.disk.main =
  {
    type = "disk";

    # IMPORTANT: replace this with the laptop SSD's stable /dev/disk/by-id path.
    # Never guess /dev/nvme0n1: verify the target with lsblk first.
    device = "/dev/disk/by-id/REPLACE_WITH_LAPTOP_SSD_ID";

    content =
    {
      type = "gpt";

      partitions =
      {
        ESP =
        {
          size = "1G";
          type = "EF00";

          content =
          {
            type = "filesystem";
            format = "vfat";
            mountpoint = "/boot";
            mountOptions = [ "umask=0077" ];
          };
        };

        cryptroot =
        {
          size = "100%";

          content =
          {
            type = "luks";
            name = "cryptroot";
            extraFormatArgs = [ "--type" "luks2" ];

            # Disko prompts interactively for the passphrase when formatting.
            # SSD discard/TRIM is deliberately not enabled to avoid leaking
            # allocation information through the encryption layer.
            settings =
            {
              allowDiscards = false;
            };

            content =
            {
              type = "btrfs";
              extraArgs = [ "-f" ];

              subvolumes =
              {
                "/root" =
                {
                  mountpoint = "/";
                  mountOptions = [ "compress=zstd" "noatime" ];
                };

                "/home" =
                {
                  mountpoint = "/home";
                  mountOptions = [ "compress=zstd" "noatime" ];
                };

                "/nix" =
                {
                  mountpoint = "/nix";
                  mountOptions = [ "compress=zstd" "noatime" ];
                };

                "/games" =
                {
                  mountpoint = "/games";
                  mountOptions = [ "compress=zstd" "noatime" ];
                };

                "/log" =
                {
                  mountpoint = "/var/log";
                  mountOptions = [ "compress=zstd" "noatime" ];
                };

                # Disko creates a Btrfs-compatible swapfile in a dedicated
                # subvolume. This is swap, not a fixed-size partition.
                "/swap" =
                {
                  mountpoint = "/.swapvol";
                  swap.swapfile.size = "16G";
                };
              };
            };
          };
        };
      };
    };
  };
}
