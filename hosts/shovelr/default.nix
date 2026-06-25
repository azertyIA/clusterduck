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

  services.jellyfin = {
    enable = true;
    openFirewall = true;
    user = "ducks";
  };

  services.tailscale.enable = true;
  networking.firewall.allowedUDPPorts = [ 8096 ];
}
