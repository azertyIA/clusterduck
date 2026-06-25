{
  description = "Clusterduck";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
  let
    system  = "x86_64-linux";
    mkHost = hostModule:
      nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ 
          ./modules/base
          ./roles/server.nix # tailscale access
          hostModule
        ];
      };
  in {
    nixosConfigurations = {
      mallard = mkHost ./hosts/mallard;
      pintail = mkHost ./hosts/pintail;
    };
  };
}
