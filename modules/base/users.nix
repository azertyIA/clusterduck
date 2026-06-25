{ pkgs, ... }:

{
  users.users.ducks = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];

    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINr0k+ZheFvZjxsAXL+9JK5Rls9Yq9so+4rXgRM15+mD ducks@ducks-B650I-AORUS-ULTRA"
    ];
  };
}
