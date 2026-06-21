{ ... }:

{
  imports =
    [
      ./duck1-hardware-configuration.nix
    ];

  networking.hostName = "duck1";
  networking.interfaces.eno1.ipv4.addresses = [{
    address = "10.42.0.11";
    prefixLength = 24;
  }];
}
