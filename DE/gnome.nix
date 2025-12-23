{ config, pkgs, ... }:

{
  services = {
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    xserver = {
      enable = true;
      excludePackages = with pkgs; [
        xterm
      ];
    };
  };
}