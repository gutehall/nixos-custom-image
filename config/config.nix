{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Mathias Gutehall";
    userEmail = "mathias@dm3.io";
  };
}