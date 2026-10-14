{
  time.timeZone = "Europe/Budapest";

  i18n.defaultLocale = "hu_HU.UTF-8";

  console =
  {
    font = "Lat2-Terminus16";
    keyMap = "hu";
  };

  # Default XKB layout for X11/Xwayland and compositors that inherit
  # the system keyboard configuration.
  services.xserver.xkb =
  {
    layout = "hu";
    variant = "";
  };

  # Compatibility default for Wayland applications and compositors.
  environment.sessionVariables.XKB_DEFAULT_LAYOUT = "hu";
}
