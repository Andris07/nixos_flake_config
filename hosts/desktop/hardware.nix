{
  nixpkgs.hostPlatform = "x86_64-linux";
  
  boot.initrd.availableKernelModules =
  [
    "nvme"
    "xhci_pci"
    "ahci"
    "usbhid"
    "uas"
    "sd_mod"
  ];

  boot.initrd.kernelModules = [ ];
  boot.extraModulePackages = [ ];
}