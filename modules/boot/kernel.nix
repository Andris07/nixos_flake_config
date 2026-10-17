{ pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelParams =
  [
    "i2c_hid.ignore_dmi_i2c_gpios=1"
    "pinctrl_amd.cpuid_override=1"
  ];
}
