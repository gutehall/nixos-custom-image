{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  #networking.networkmanager.enable = true;

  time.timeZone = "Europe/Stockholm";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "sv_SE.UTF-8";
    LC_IDENTIFICATION = "sv_SE.UTF-8";
    LC_MEASUREMENT = "sv_SE.UTF-8";
    LC_MONETARY = "sv_SE.UTF-8";
    LC_NAME = "sv_SE.UTF-8";
    LC_NUMERIC = "sv_SE.UTF-8";
    LC_PAPER = "sv_SE.UTF-8";
    LC_TELEPHONE = "sv_SE.UTF-8";
    LC_TIME = "sv_SE.UTF-8";
  };

  console.keyMap = "sv-latin1";

  services.openssh.enable = true;

  # services.xserver = {
  #   layout = "se";
  #   xkbVariant = "";
  # };  

   users.users.packer = {
     isNormalUser = true;
     extraGroups = [ "wheel" ];
     initialPassword = "packer";
   };

  programs.zsh.enable = true;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    wget
    vim
    virtualbox
    vagrant
    packer
    ansible
    git
    gh
    zsh
    unrar
    unzip
    curl
    gnupg
    htop
    btop
    docker
    kubectl
    minikube
    lazygit
    lsd
    bat
    awscli2
    eza
    tmux
  ];

  system.stateVersion = "23.11";

  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.guest.enable = true;
}
