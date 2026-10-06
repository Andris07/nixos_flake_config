{
  home-manager =
  {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";

    users.andris = import ../../home/andris/home.nix;
  };
}
