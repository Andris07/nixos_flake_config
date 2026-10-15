{
  wayland.windowManager.hyprland =
  {
    enable = true;

    # The NixOS module provides Hyprland and its portal
    package = null;
    portalPackage = null;

    configType = "lua";

    extraConfig = ''
      hl.config({
        input = {
          kb_layout = "hu",
          kb_variant = "",
        },
      })

      hl.on("hyprland.start", function()
        hl.exec_cmd("serpantinumd start")
        hl.exec_cmd("wl-paste --type text --watch cliphist store")
        hl.exec_cmd("wl-paste --type image --watch cliphist store")
      end)

      -- Avoid collisions with Serpantinum's own global shortcuts.
      hl.bind("SUPER + Return", hl.dsp.exec_cmd("alacritty"))
      hl.bind("ALT + F4", hl.dsp.window.close())
      hl.bind("SUPER + Q", hl.dsp.window.close())
      hl.bind("SUPER + SHIFT + F", hl.dsp.window.float({}))
      hl.bind("SUPER + SHIFT + Space", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
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
