# nix/modules/home-manager.nix — auto-generated from mio.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.mio; in {
  options.programs.mio = {
    enable = lib.mkEnableOption "mio";
    package = lib.mkOption { type = lib.types.package; default = pkgs.mio or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
