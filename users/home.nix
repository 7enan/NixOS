{ pkgs, configs, programs, ... }:

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
    gimp
    krita
    inkscape
    
    # Games
    heroic
    protonplus
    ludusavi

    # Gnome Extensions
    
    gnomeExtensions.blur-my-shell
    gnomeExtensions.appindicator
    gnomeExtensions.media-controls
    gnomeExtensions.bluetooth-battery-meter
    gnomeExtensions.tiling-shell
    gnomeExtensions.caffeine
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.top-bar-organizer
    gnomeExtensions.battery-health-charging

  ];

  dconf = {
    enable = true;
    settings."org/gnome/shell" = {
      enabled-extensions = [
        
        "Bluetooth-Battery-Meter@maniacx.github.com"
        "appindicatorsupport@rgcjonas.gmail.com"
        "blur-my-shell@aunetx"
        "mediacontrols@cliffniff.github.com"
        "tilingshell@ferrarodomenico.com"
        "caffeine@patapon.info"
        "clipboard-indicator@tudmotu.com"
        "top-bar-organizer@julian.gse.jsts.xyz"
        "Battery-Health-Charging@maniacx.github.com"

      ];
    };
  };
}
