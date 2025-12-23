{ config, pkgs, ... }:

{
  imports =
    [
      ./gnome.nix
      ./excludes.nix
    ];
}