{ config, pkgs, ... }:

{
  imports =
    [
      ./config.nix
      ./packages.nix 
      ./games.nix
      ./docker.nix
      ./distrobox.nix
    ];
}