{
  programs.bash =
  {
    enable = true;

    shellAliases =
    {
      ll = "ls -lah";
      rebuild = "nh os switch";
    };
  };

  programs.direnv =
  {
    enable = true;
    nix-direnv.enable = true;
  };
}
