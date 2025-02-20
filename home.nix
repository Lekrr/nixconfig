{ config, pkgs, ... }:

{
  # TODO please change the username & home directory to your own
  home.username = "ivan";
  home.homeDirectory = "/home/ivan";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
      kdePackages.kate
      google-chrome
      github-cli
      telegram-desktop
  ];

  # home.file.".config/nvim" = {
  #   source = config.lib.file.mkOutOfStoreSymlink "~/.dotfiles/nvim";
  #   recursive = true;
  # };

  home.stateVersion = "24.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;

}
