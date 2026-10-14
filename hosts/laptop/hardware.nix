{
  nixpkgs.hostPlatform = "x86_64-linux";

  # Generic AMD laptop defaults. Review the generated hardware configuration
  # after booting the installer, especially Wi-Fi and any special devices.
  boot.initrd.availableKernelModules =
  [
    "nvme"
    "xhci_pci"
    "usbhid"
    "sd_mod"
  ];

  boot.initrd.kernelModules = [ ];
  boot.extraModulePackages = [ ];
}
