{ config, ... }:

{
  imports = [
    ./common.nix
    ./networking.nix
    ./ssh.nix
    ./users.nix
    ./packages.nix
  ];
}
