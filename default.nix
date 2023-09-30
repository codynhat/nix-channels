{ pkgs ? import <nixpkgs> {} }:

let
in {
    heimdall = pkgs.callPackage ./pkgs/heimdall/default.nix { };
    bor = pkgs.callPackage ./pkgs/bor/default.nix { };
    openethereum = pkgs.callPackage ./pkgs/openethereum/default.nix { };
    graph-node = pkgs.callPackage ./pkgs/graph-node/default.nix { };
    friidump = pkgs.callPackage ./pkgs/friidump/default.nix { };
    makemkv = pkgs.libsForQt5.callPackage ./pkgs/makemkv/default.nix { };
    estuary = pkgs.callPackage ./pkgs/estuary/default.nix { };
    livepeer = pkgs.callPackage ./pkgs/livepeer/default.nix { };
    ios-deploy = pkgs.callPackage ./pkgs/ios-deploy/default.nix { };
}

