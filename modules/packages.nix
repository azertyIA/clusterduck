{ pkgs, ... }:

{
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    tree
    btop

    tmux
    pciutils
    usbutils
    lshw
    jellyfin-desktop
  ];
}
