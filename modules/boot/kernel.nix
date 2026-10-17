{ pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelParams =
  [
    "i2c_designware.disable_d3=1"
    "pinctrl_amd.cpuid_override=1"
  ];
}
