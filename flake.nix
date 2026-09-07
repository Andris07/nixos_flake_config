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
        system = "x86_64-linux";

        modules =
        [
          ./hosts/desktop/configuration.nix
        ];
      };

      laptop = nixpkgs.lib.nixosSystem
      {
        system = "x86_64-linux";

        modules =
        [
          ./hosts/laptop/configuration.nix
        ];
      };
    };
  };
}