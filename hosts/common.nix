{
  imports =
  [
    ../modules/boot/kernel.nix

    ../modules/desktop/base.nix
    
    ../modules/desktop/wm/hyprland.nix
    ../modules/desktop/wm/niri.nix

    ../modules/system/core.nix
    ../modules/system/dev.nix
    ../modules/system/home-manager.nix
    ../modules/system/locale.nix
    ../modules/system/networking.nix
    ../modules/system/nix.nix
    ../modules/system/users.nix
    ../modules/system/zram.nix
  ];
}
