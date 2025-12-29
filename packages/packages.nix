{ config, pkgs, ...}:

{
  
  programs.firefox.enable = true;

  programs.appimage = {
    enable = true;
    binfmt = true;
  };

  environment.systemPackages = with pkgs; [
    
    home-manager
    fastfetch
    udisks
    bibata-cursors
    sbctl
    libnotify
    rclone
    nodejs_24
    freerdp
    distrobox
    docker-compose  
    appimage-run
    gearlever
    podman-compose
    docker
        
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
    
    # Games
    heroic
    protonplus
    ludusavi

    wget
    git
    
    p7zip
    unrar
    
    gnome-tweaks
    mission-center
    lollypop
    libreoffice-fresh
    hunspell
    hunspellDicts.pt_BR
    
  ];
}