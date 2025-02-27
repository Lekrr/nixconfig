{ config, pkgs, ... }:

{
  home.username = "ivan";
  home.homeDirectory = "/home/ivan";

  home.packages = with pkgs; [
      kdePackages.kate
      google-chrome
      github-cli
      telegram-desktop
      filelight

      tree
  ];

  # home.file.".config/nvim" = {
  #   source = config.lib.file.mkOutOfStoreSymlink "~/.dotfiles/nvim";
  #   recursive = true;
  # };

  home.stateVersion = "24.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;

}
