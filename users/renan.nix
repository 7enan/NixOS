{ config, pkgs, ... }:

{
  users.users.renan = {
    isNormalUser = true;
    description = "Renan";
    extraGroups = [ 
        "networkmanager"     
        "wheel" 
        "docker"
    ];
  };

  users.extraGroups.docker.members = [ "renan" ];
}