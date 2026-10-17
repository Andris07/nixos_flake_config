{ config, pkgs, ... }

{
  systemd.services.reset-i2c-touchscreen =
  {
    description = "Reset I2C bus for Lenovo Yoga Touchscreen/Pen";
    after = [ "multi-user.target" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig =
    {
      Type = "oneshot";
      ExecStartPre = "${pkgs.coreutils}/bin/sleep 15";
      ExecStart = "${pkgs.kmod}/bin/modprobe -r i2c_designware_platform || true";
      ExecStopPost = "${pkgs.kmod}/bin/modprobe i2c_designware_platform || true";
    } 
  }
}
