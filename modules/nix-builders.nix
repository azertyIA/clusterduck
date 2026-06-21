{ config, pkgs, ... }:

{
  nix.settings = {
    builders-use-substitutes = true;
    sandbox = true;
  };

  nix.distributedBuilds = true;

  nix.buildMachines = [
    {
      hostName = "mallard";
      sshUser = "ducks";
      sshKey = "/home/ducks/.ssh/id_ed25519"; # optional but recommended

      system = "x86_64-linux";

      maxJobs = 8;        # i7-9700T = 8 threads
      speedFactor = 1;

      supportedFeatures = [ "nixos-test" "benchmark" "big-parallel" ];
    }

    {
      hostName = "pintail";
      sshUser = "ducks";

      system = "x86_64-linux";

      maxJobs = 8;
      speedFactor = 1;

      supportedFeatures = [ "nixos-test" "benchmark" "big-parallel" ];
    }
  ];
}
