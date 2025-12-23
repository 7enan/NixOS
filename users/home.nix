{ pkgs, ... }:

{
  
  home.stateVersion = "23.05";
  home.username = "renan";
  home.homeDirectory = "/home/renan";
  
  home.packages = with pkgs; [
    
    vscodium
    kiwix
    gnome-network-displays
    obsidian
    iotas
    
    # Gnome Extensions
    
    gnomeExtensions.blur-my-shell
    gnomeExtensions.appindicator
    gnomeExtensions.media-controls
    gnomeExtensions.dash-to-dock
    gnomeExtensions.bluetooth-battery-meter
    gnomeExtensions.tiling-shell
    gnomeExtensions.caffeine
    
  ];

  dconf = {
    enable = true;
    settings."org/gnome/shell" = {
      enabled-extensions = [
        
        "Bluetooth-Battery-Meter@maniacx.github.com"
        "appindicatorsupport@rgcjonas.gmail.com"
        "blur-my-shell@aunetx"
        "dash-to-dock@micxgx.gmail.com"
        "mediacontrols@cliffniff.github.com"
        "tilingshell@ferrarodomenico.com"
        "caffeine@patapon.info"
        
      ];
    };
  };
}
