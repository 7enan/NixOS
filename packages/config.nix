{ config, pkgs, ...}:

{
  nix.settings.auto-optimise-store = true;

  nixpkgs.config = {
    allowBroken = false;
    allowUnfree = true;
  };

  system.autoUpgrade ={
    enable = true;
    dates = "daily";
    allowReboot = false;
  };

  nix.gc = {
    automatic = true;
    dates = "weakly";
    options = "--delete-older-than 5d";
  };
}