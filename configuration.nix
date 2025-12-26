{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./boot/default.nix
      ./networking/default.nix
      ./localization/default.nix
      ./DE/default.nix
      ./packages/default.nix
      ./users/default.nix
    ];

  services.udisks2.enable = true;

  services.blueman.enable = true;

  services.printing.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  
  programs.dconf.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  system.stateVersion = "25.11";
  
  services.thermald.enable = true;

  powerManagement.powertop.enable = true;


  hardware.graphics.enable = true;
  hardware.graphics.extraPackages = with pkgs; [
    mesa
    intel-media-driver  # Para suporte a Quick Sync
    vulkan-tools         # Para ferramentas Vulkan
  ];

}
