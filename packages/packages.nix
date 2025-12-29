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