{ inputs, ... }:

{
  imports =
  [
    inputs.niri.homeModules.config
  ];

  programs.niri.settings =
  {
    input.keyboard.xkb =
    {
      layout = "hu";
      variant = "";
    };

    spawn-at-startup =
    [
      {
        command = [ "serpantinumd" "start" ];
      }
    ];
  };
}