{
  hardware.cpu.amd.updateMicrocode = true;
  hardware.enableRedistributableFirmware = true;
  hardware.graphics.enable = true;

  boot.kernelModules =
  [
    "kvm-amd"
  ];
}