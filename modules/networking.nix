{ ... }:

{
  networking.networkmanager.enable = true;
  networking.useDHCP = false;
  networking.defaultGateway = "10.42.0.1";
  networking.nameservers = [
   "1.1.1.1"
   "8.8.8.8"
  ];
}
