{ config, pkgs, ... }:

{
  imports =
    [
      ./config.nix
      ./packages.nix
      ./waydroid.nix   
    ];
}