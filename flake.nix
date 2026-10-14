{
  description = "NixOS Configuration";

  inputs =
  {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    disko =
    {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager =
    {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri =
    {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    serpantinum =
    {
      url = "github:ilyamiro/serpantinum";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, disko, home-manager, niri, serpantinum, ... }:
  let
    mkHost = hostName: nixpkgs.lib.nixosSystem
    {
      specialArgs =
      {
        inherit serpantinum;
        inherit niri;
      };

      modules =
      [
        ./hosts/${hostName}/configuration.nix

        disko.nixosModules.disko
        home-manager.nixosModules.home-manager
        niri.nixosModules.niri
        serpantinum.nixosModules.default
      ];
    };
  in
  {
    nixosConfigurations =
    {
      desktop = mkHost "desktop";
      laptop = mkHost "laptop";
    };
  };
}
