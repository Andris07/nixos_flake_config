{
  programs.niri =
  {
    enable = true;

    settings =
    {
      input.keyboard.xkb =
      {
        layout = "hu";
        variant = "";
      };

      # Keep the shell available in Niri sessions.
      spawn-at-startup =
      [
        {
          command = [ "serpantinumd" "start" ];
        }
      ];
    };
  };
}
