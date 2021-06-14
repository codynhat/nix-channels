{ pkgs ? import <nixpkgs> {} }:

let
in {
    heimdall = pkgs.callPackage ./pkgs/heimdall/default.nix { };
    bor = pkgs.callPackage ./pkgs/bor/default.nix { };
    openethereum = pkgs.callPackage ./pkgs/openethereum/default.nix { };
    matic-mainnet-sentry = pkgs.callPackage ./pkgs/matic-mainnet-sentry/default.nix { };
}

