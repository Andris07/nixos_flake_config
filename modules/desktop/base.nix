{ pkgs, ... }:

{
  services.displayManager.ly.enable = true;

  services.pipewire =
  {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  security.rtkit.enable = true;

  fonts.packages = with pkgs;
  [
    noto-fonts
    nerd-fonts.jetbrains-mono
  ];

  environment.sessionVariables =
  {
    NIXOS_OZONE_WL = "1";
    XKB_DEFAULT_LAYOUT = "hu";
  };

  environment.systemPackages = with pkgs;
  [
    alacritty
    fuzzel
    wl-clipboard
  ];
}
