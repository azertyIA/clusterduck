{ ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../roles/media.nix
      ../../roles/server.nix
      # ../../roles/storage.nix
    ];

  networking.hostName = "mallard";
  networking.interfaces.eno1.ipv4.addresses = [{
    address = "10.42.0.11";
    prefixLength = 24;
  }];
}
