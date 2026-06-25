{ ... }:

{
  networking.firewall.allowedUDPPorts = [ 8096 ];

  services.jellyfin = {
    enable = true;
    openFirewall = true;
    user = "ducks";
  };
}
