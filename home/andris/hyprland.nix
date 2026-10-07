{
  wayland.windowManager.hyprland =
  {
    enable = true;

    # the package is given by the NixOS module (programs.hyprland)
    package = null;
    portalPackage = null;

    settings =
    {
      "$mod" = "SUPER";

      monitor = ",preferred,auto,1";

      input.kb_layout = "hu";

      bind =
      [
        "$mod, T, exec, alacritty"
        "$mod, D, exec, fuzzel"
        "$mod, C, killactive,"
        "$mod, F, fullscreen,"
        "$mod, V, togglefloating,"
        "$mod SHIFT, E, exit,"

        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"
      ]
      ++ (builtins.concatLists (builtins.genList (i:
        let
          ws = i + 1;
        in
        [
          "$mod, code:1${toString i}, workspace, ${toString ws}"
          "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
        ]) 9));

      bindm =
      [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };
  };
}
