{ system ? builtins.currentSystem, pkgs ? import ./nix { inherit system; } }:

let
in {
    heimdall = pkgs.callPackage ./pkgs/heimdall/default.nix { };
    openethereum = pkgs.callPackage ./pkgs/openethereum/default.nix { };
    matic-mainnet-sentry = pkgs.callPackage ./pkgs/matic-mainnet-sentry/default.nix { };
}

