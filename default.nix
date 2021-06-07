{ pkgs ? import <nixpkgs> {} }:

let
in {
    heimdall = pkgs.callPackage ./pkgs/heimdall/default.nix { };
    openethereum = pkgs.callPackage ./pkgs/openethereum/default.nix { };
}

