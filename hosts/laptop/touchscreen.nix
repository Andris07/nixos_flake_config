{ pkgs, ... }:

{
  systemd.services.touchscreen-i2c-rebind =
  {
    description = "Rebind i2c_designware (Wacom WACF2200 touchscreen";
    wantedBy = [ "multi-user.target" ];
    serviceConfig =
    {
      Type = "oneshot";
      RemainAfterExit = true;
    };
    path = [ pkgs.coreutils ];
    script =
    ''
      dev="AMDI0010:02"
      drv=/sys/bus/platform/drivers/i2c_designware

      # waiting for pinctrl-amd to be binded (~10s)
      for _ in $(seq 1 50); do
        [ -e /sys/bus/platform/drivers/amd_gpio/AMDI0030:00 ] && break
        sleep 0.2
      done

      # if bus is currently binded, we unbind it
      if [ -e "$drv/$dev" ]; then
        echo -n "$dev" > "$drv/unbind" || true
        sleep 0.2
      fi
      echo -n "$dev" > "$drv/bind"
    '';
  };
}

