{ pkgs, ... }:

{
  # Use https://github.com/gvolpe/dconf2nix and run dconf dump / | dconf2nix > dconf.nix
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
}