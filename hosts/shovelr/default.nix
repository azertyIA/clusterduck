{ ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  networking.hostName = "shovelr";
  networking.interfaces.eno1.ipv4.addresses = [{
    address = "10.42.0.13";
    prefixLength = 24;
  }];
}
