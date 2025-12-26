{ config, pkgs, ... }:

{
  imports =
    [
      ./config.nix
      ./packages.nix 
      ./games.nix  
    ];
}