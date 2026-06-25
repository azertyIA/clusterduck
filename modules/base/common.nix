{ config, ... }:

{
  nix.settings.trusted-users = [ "root" "ducks" "@wheel" ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  i18n.consoleKeyMap = "dvorak";
  system.stateVersion = "26.05";
}

