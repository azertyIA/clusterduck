{ ... }:

{
  networking.hostName = "duck2";
  networking.interfaces.eno1.ipv4.addresses = [{
    address = "10.42.0.12";
    prefixLength = 24;
  }];
}
