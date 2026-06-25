{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  imports =
    [
      ./hardware-configuration.nix
    ];

  networking.hostName = "pintail";
  networking.interfaces.eno1.ipv4.addresses = [{
    address = "10.42.0.12";
    prefixLength = 24;
  }];

  environment.systemPackages = with pkgs; [
    minecraft-server
    tailscale
  ];

  services.minecraft-server = {
    enable = true;
    eula = true;
    openFirewall = true; # Opens the port the server is running on (by default 25565 but in this case 43000)
    declarative = true;
    serverProperties = {
      server-port = 43000;
      difficulty = 3;
      gamemode = 1;
      max-players = 5;
      motd = "NixOS Minecraft server!";
      allow-cheats = true;
    };
    jvmOpts = "-Xms4G -Xmx4G"; 
    # package = pkgs.papermc;
  };

  services.tailscale.enable = true;
}
