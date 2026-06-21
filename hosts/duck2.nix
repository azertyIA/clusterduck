{ ... }:

{
  imports =
    [
      ./duck2-hardware-configuration.nix
    ];

  networking.hostName = "pintail";
  networking.interfaces.eno1.ipv4.addresses = [{
    address = "10.42.0.12";
    prefixLength = 24;
  }];
}
