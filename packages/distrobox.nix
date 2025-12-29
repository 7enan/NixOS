{ config, pkgs, virtualisation, ... }:

{
  
  virtualisation.podman = {
    enable = true;
  };

}