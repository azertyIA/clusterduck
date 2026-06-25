{ ... }:

{
  networking = {
    firewall.allowedTCPPorts = [ 8096 ];
    networkmanager.enable = true;
    useDHCP = false;
    defaultGateway = "10.42.0.1";
    nameservers = [
      "1.1.1.1"
      "8.8.8.8"
    ];
  };
}
