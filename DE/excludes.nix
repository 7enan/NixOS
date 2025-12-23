{ config, pkgs, ...}:

{
  environment.gnome.excludePackages = with pkgs; [ 
    
    gnome-tour 
    gnome-user-docs
    gnome-software
    epiphany
    geary
    gnome-system-monitor
    gnome-music
    gnome-characters
    gnome-contacts
    gnome-font-viewer
    gnome-weather
    gnome-maps
    yelp
    gnome-connections

  ];
}