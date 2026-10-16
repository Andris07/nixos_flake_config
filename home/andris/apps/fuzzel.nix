{
  programs.fuzzel =
  {
    enable = true;

    settings =
    {
      main =
      {
        terminal = "alacritty";
        width = 48;
        lines = 12;
        horizontal-pad = 18;
        vertical-pad = 12;
        inner-pad = 8;
        font = "Nunito:size=12";
      };

      colors =
      {
        background = "20212bff";
        text = "e7e7f0ff";
        match = "d7b8f5ff";
        selection = "45465cff";
        selection-text = "ffffffff";
        selection-match = "f0d9a5ff";
        border = "a8c7faff";
      };

      border =
      {
        width = 2;
        radius = 12;
      };
    };
  };
}