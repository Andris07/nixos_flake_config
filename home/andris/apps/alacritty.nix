{ pkgs, ... }:

{
  programs.alacritty =
  {
    enable = true;

    settings =
    {
      live_config_reload = true;

      window =
      {
        padding =
        {
          x = 16;
          y = 12;
        };

        dynamic_padding = true;
        opacity = 1.0;
        # 1.0 solid, 0.0 clear
      };

      scrolling.history = 10000;

      font =
      {
        size = 12.0;

        normal =
        {
          family = "JetBrainsMono Nerd Font";
          style = "Regular";
        };

        bold =
        {
          family = "JetBrainsMono Nerd Font";
          style = "Bold";
        };
      };

      colors =
      {
        primary =
        {
          background = "#20212b";
          foreground = "#e7e7f0";
        };

        cursor =
        {
          text = "#20212b";
          cursor = "#c9b8f0";
        };

        selection =
        {
          text = "#e7e7f0";
          background = "#45465c";
        };

        normal =
        {
          black = "#282a36";
          red = "#ef8f9b";
          green = "#a8d5ba";
          yellow = "#f0d9a5";
          blue = "#a8c7fa";
          magenta = "#d7b8f5";
          cyan = "#a8dedc";
          white = "#e7e7f0";
        };

        bright =
        {
          black = "#666779";
          red = "#f5a5af";
          green = "#bce5ca";
          yellow = "#f7e3b5";
          blue = "#bbd5ff";
          magenta = "#e1c9fa";
          cyan = "#b9e9e7";
          white = "#ffffff";
        };
      };
    };
  };
}