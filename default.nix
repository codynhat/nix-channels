{ pkgs ? import <nixpkgs> {} }:

let
in {
    openethereum = pkgs.callPackage ./pkgs/openethereum/default.nix { };
}

