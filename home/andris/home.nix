{
  imports =
  [
    ./apps.nix
    ./apps/alacritty.nix
    ./apps/clipboard.nix
    ./apps/fuzzel.nix

    ./fonts.nix
    ./git.nix
    ./hyprland.nix
    ./niri.nix
    ./serpantinum.nix
    ./shell.nix
  ];

  home.stateVersion = "26.05";
}
