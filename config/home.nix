{ config, pkgs, ... }:

{
  imports = [
      #./zsh.nix 
      ./config.nix
      ./vim.nix
      ./dconf.nix
  ];

  home.username = "mathias";
  home.homeDirectory = "/home/mathias";
  home.stateVersion = "23.11";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    vim
    virtualbox
    vagrant
    packer
    ansible
    vscode
    slack
    git
    gh
    google-chrome
    zsh
    #oh-my-zsh
    #zsh-history-substring-search
    #zsh-fzf-tab
    #zsh-syntax-highlighting
    #zsh-autosuggestions
    tilix
    unrar
    unzip
    curl
    wget
    gnupg
    htop
    btop
    tailscale
    docker
    minecraft
    dropbox
    kubectl
    minikube
    lazygit
    todoist
    spotify
    teams-for-linux
    lsd
    bat
    awscli2
    eza
    drive
    tmux
  ];

  home.file = {
    "./oh-my-zsh/themes/bullet-train.zsh-theme".source = ./sources/bullet-train.zsh-theme;
    "ohmyzsh.sh".source = ./sources/ohmyzsh.sh;
    ".zshrc".source = ./sources/.zshrc;
  };

  programs.home-manager.enable = true;
}
