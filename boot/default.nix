{ pkgs, lib, ...}:
{
  # ------------------------ #
  # -- Boot configuration -- #
  # ------------------------ #

  boot = {
    
    # My filesystems
    supportedFilesystems = [
      "ntfs"
      "exfat"
      "ext4"
      "fat32"
      "brtfs"
    ];
    
    # Clean the /tmp directory on boot
    tmp.cleanOnBoot = true;
    
    # My bootloader configuration
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      grub = {
        devices = [ "nodev" ];
        efiSupport = true;
        enable = true;
        useOSProber = true;
      };
    };
  };
}