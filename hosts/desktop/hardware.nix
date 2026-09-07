{
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

  boot.kernelModules =
  [
    "kvm-amd"
  ];

  boot.extraModulePackages = [ ];
}