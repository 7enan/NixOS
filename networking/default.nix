{ config, ...}:

{
  
  networking = {
    hostName = "NixOS";
    networkmanager = {
      enable = true;
      dns = "none";
    };
    nameservers = 
      [
        "1.1.1.3"
        "1.0.0.3"
      ];
    dhcpcd.extraConfig = "nohook resolv.conf";
  };
}