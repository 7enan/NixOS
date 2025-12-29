{ config, pkgs, ...}:

{
  
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    
    home-manager
    fastfetch
    udisks
    bibata-cursors
    sbctl
    libnotify
    rclone
    winboat
    freerdp
    distrobox
    docker-compose

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