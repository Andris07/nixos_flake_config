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

    serpantinum =
    {
      url = "github:ilyamiro/serpantinum";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, disko, home-manager, serpantinum, ... }:
  let
    mkHost = hostName: nixpkgs.lib.nixosSystem
    {
      specialArgs = { inherit serpantinum; };

      modules =
      [
        ./hosts/${hostName}/configuration.nix
        disko.nixosModules.disko
        home-manager.nixosModules.home-manager
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
