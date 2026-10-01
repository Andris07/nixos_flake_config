{
  description = "NixOS Configuration";

  inputs =
  {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
  {
    nixosConfigurations =
    {
      desktop = nixpkgs.lib.nixosSystem
      {
        modules =
        [
          ./hosts/desktop/configuration.nix
        ];
      };

      laptop = nixpkgs.lib.nixosSystem
      {
        modules =
        [
          ./hosts/laptop/configuration.nix
        ];
      };
    };
  };
}