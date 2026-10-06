{
  description = "NixOS Configuration";

  inputs =
  {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager =
    {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
  let
    mkHost = hostName: nixpkgs.lib.nixosSystem
    {
      modules =
      [
        ./hosts/${hostName}/configuration.nix
        home-manager.nixosModules.home-manager
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
