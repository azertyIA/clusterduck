{
  description = "Duck Cluster";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  output = { nixpkgs, ... }:
  let
    system  = "x86_64-linux";
    mkHost = hostName: config:
      nixpkgs.lib.nixosSystem {
        inherit system;
        modules  = [ 
          ./modules/common.nix
          config
        ];
      };
  in
    nixosConfigurations = {
      duck1 = mkHost "duck1" ./hosts/duck1.nix;
      duck2 = mkHost "duck2" ./hosts/duck2.nix;
    };
  };
}
