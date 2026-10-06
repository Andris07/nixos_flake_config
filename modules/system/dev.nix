{ pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    nil
    nixfmt
    gnumake
    fastfetch
  ];
}
