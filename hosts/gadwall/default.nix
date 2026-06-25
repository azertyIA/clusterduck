{ ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  networking.hostName = "gadwall";
  networking.interfaces.eno1.ipv4.addresses = [{
    address = "10.42.0.10";
    prefixLength = 24;
  }];
}
