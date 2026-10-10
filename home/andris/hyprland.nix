{
  wayland.windowManager.hyprland =
  {
    enable = true;

    # package is given by the NixOS modul (programs.hyprland)
    package = null;
    portalPackage = null;

    configType = "lua";

    extraConfig = ''
      hl.config({
        input = {
          kb_layout = "hu",
        },
      })

      hl.bind("SUPER + T", hl.dsp.exec_cmd("alacritty"))
      hl.bind("SUPER + D", hl.dsp.exec_cmd("fuzzel"))
      hl.bind("SUPER + C", hl.dsp.window.close())
      hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
      hl.bind("SUPER + V", hl.dsp.window.float({}))
      hl.bind("SUPER + SHIFT + E", hl.dsp.exit())

      hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
      hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
      hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
      hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

      for i = 1, 9 do
        hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = tostring(i) }))
        hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = tostring(i) }))
      end

      hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
      hl.bind("SUPER + mouse:273", hl.dsp.window.resize())
    '';
  };
}
