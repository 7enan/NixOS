{ config, pkgs, programs, }:

{
  programs = {
    steam.enable = true;
    gamemode = {
      enable = true;
      settings = {
        general.renice = 10;
        custom = {
          start = "${pkgs.libnotify}/bin/notify-send 'GameMode started'";
          end = "${pkgs.libnotify}/bin/notify-send 'GameMode ended'";
        };
      };
    };
    gamescope.enable = true;
  };
}
