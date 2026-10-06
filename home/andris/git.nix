{
  programs.git =
  {
    enable = true;

    settings =
    {
      init.defaultBranch = "main";
      pull.rebase = false;

      # user.name = "IDE_A_NEVED";
      # user.email = "ide@az.emailed";
    };
  };
}
