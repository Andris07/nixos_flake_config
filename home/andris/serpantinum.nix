{ serpantinum, ... }:

{
  imports =
  [
    serpantinum.homeManagerModules.default
  ];

  programs.serpantinum =
  {
    enable = true;
    systemd.enable = true;

    settings =
    {
      general =
      {
        language = "en";
        weatherUnit = "metric";
        weatherInterval = 30;
      };

      bar =
      {
        position = "top";
        style = "solid";
        width = 40;
        workspaceCount = 9;
        modules =
        {
          left = [ "workspaces" ];
          center = [ "time" ];
          right = [ "tray" [ "kb" "wifi" "bt" "vol" "bat" ] ];
        };
      };

      theme =
      {
        fontFamily = "JetBrainsMono Nerd Font";
        borderRadius = 12;
        matugen = true;
      };

      notifications =
      {
        dnd = false;
        position = "top right";
        sound = true;
      };
    };
  };
}
