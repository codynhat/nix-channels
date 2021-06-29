{ pkgs ? import <nixpkgs> {} }:

let
in {
    heimdall = pkgs.callPackage ./pkgs/heimdall/default.nix { };
    bor = pkgs.callPackage ./pkgs/bor/default.nix { };
    openethereum = pkgs.callPackage ./pkgs/openethereum/default.nix { };
    graph-node = pkgs.callPackage ./pkgs/graph-node/default.nix { };
}

