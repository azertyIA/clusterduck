{ ... }:

{
  nixpkgs.config.allowUnfree = true;

  services.minecraft-server = {
    enable = true;
    eula = true;
    openFirewall = true; # Opens the port the server is running on (by default 25565 but in this case 43000)
    declarative = true;
    serverProperties = {
      server-port = 43000;
      difficulty = 3;
      gamemode = 1;
      max-players = 16;
      motd = "NixOS Minecraft server!";
      allow-cheats = true;
    };
    jvmOpts = "-Xms8G -Xmx8G"; 
    # package = pkgs.papermc;
  };
}
