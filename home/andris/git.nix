{
  programs.git =
  {
    enable = true;

    settings =
    {
      init.defaultBranch = "main";
      pull.rebase = false;

      user.name = "Andris";
      user.email = "laczkovicsandris07.education@gmail.com";
    };
  };
}
