{ pkgs, ... }:

{
  
  home.stateVersion = "23.05";
  home.username = "renan";
  home.homeDirectory = "/home/renan";
  
  nixpkgs.config = {
    allowUnfree = true;
  };
  
  home.packages = with pkgs; [
    
    vscodium
    kiwix
    gnome-network-displays
    obsidian
    python3
    python3Packages.pip
    alpaca
    ollama-vulkan
    sqlite

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
