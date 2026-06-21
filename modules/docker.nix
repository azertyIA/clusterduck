{ ... }:

{
  virtualization.docker.enable = true;
  users.users.ducks.extraGroups = [ "docker" ];
}
