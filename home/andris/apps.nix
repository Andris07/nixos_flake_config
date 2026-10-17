{ pkgs, ... }:

{
  programs.firefox.enable = true;

  home.packages = with pkgs;
  [
    discord
    obsidian
    vlc
    vscode
  ];
}
