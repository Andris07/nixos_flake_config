{ pkgs, ... }:

{
  environment.systemPackages = with pkgs;
  [
    vim
    wget
    curl
    git
    gh
    tree
    unzip
    zip
    ripgrep
    fd
    jq
    btop
    file
    pciutils
    usbutils
  ];

  programs.nh =
  {
    enable = true;
    flake = "/home/andris/nixos";
  };
}
