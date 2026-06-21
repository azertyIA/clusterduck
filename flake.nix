{
  description = "Duck Cluster";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
  let
    system  = "x86_64-linux";
    mkHost = config:
      nixpkgs.lib.nixosSystem {
        inherit system;
        modules  = [ 
          ./modules/common.nix
          ./modules/networking.nix
          config
        ];
      };
  in {
    nixosConfigurations = {
      mallard = mkHost ./hosts/mallard;
      pintail = mkHost ./hosts/pintail;
    };
  };
}
