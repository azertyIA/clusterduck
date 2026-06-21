{ ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  networking.hostName = "mallard";
  networking.interfaces.eno1.ipv4.addresses = [{
    address = "10.42.0.11";
    prefixLength = 24;
  }];

  services.jellyfin.enable = true;
  services.jellyfin.openFirewall = true;
}
