{ pkgs, configs, programs, desktop, ... }:

{
  
  home.stateVersion = "23.05";
  home.username = "renan";
  home.homeDirectory = "/home/renan";
  
  nixpkgs.config = {
    allowUnfree = true;
  };

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  home.packages = with pkgs; [
    
    vscodium
    kiwix
    obsidian
    python3
    python3Packages.pip
    alpaca
    ollama-vulkan
    sqlite
    gimp
    krita
    inkscape
    flatpak
    
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

  services.flatpak = {
    enable = true;
    extraRemotes = [
      {
        name = "flathub";
        url = "https://flathub.org/repo/flathub.flatpakrepo";
      }
    ];
    packages = [
      "org.gnome.NetworkDisplays"
    ];
  };

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

   services.flatpak.enable = true;

  # Definindo remotes
  services.flatpak.remotes = {
    "flathub" = "https://dl.flathub.org/repo/flathub.flatpakrepo";
  };

  # Aplicativos Flatpak a instalar
  services.flatpak.packages = [
    { appId = "org.gnome.NetworkDisplays"; origin = "flathub"; }
  ];
}
