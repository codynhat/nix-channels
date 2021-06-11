{ sources ? import ./sources.nix, system ? builtins.currentSystem }:
import sources.nixpkgs {
  overlays = [
    (_: pkgs: { inherit sources; })
    (import (sources.gomod2nix + "/overlay.nix"))
  ];
  config = { };
  inherit system;
}