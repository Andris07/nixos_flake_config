{ serpantinum, ... }:

{
  home-manager =
  {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
    extraSpecialArgs = { inherit serpantinum; };

    users.andris = import ../../home/andris/home.nix;
  };
}
