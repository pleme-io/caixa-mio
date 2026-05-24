# nix/modules/darwin.nix — auto-generated from mio.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.mio; in {
  options.services.mio = {
    enable = lib.mkEnableOption "mio";
    package = lib.mkOption { type = lib.types.package; default = pkgs.mio or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
