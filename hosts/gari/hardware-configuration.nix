# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "uas" "usb_storage" "sd_mod" "rtsx_pci_sdmmc" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/86b6507e-481e-480f-8b04-8f6e2281157d";
      fsType = "btrfs";
    };

  boot.initrd.luks.devices."slash".device = "/dev/disk/by-uuid/60825df5-7e65-459f-86f6-b17806d4d9f0";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/4c52c960-d2a5-40ac-8025-8b5003b17e9a";
      fsType = "ext4";
    };

  swapDevices = [ ];

  nix.maxJobs = lib.mkDefault 4;
}