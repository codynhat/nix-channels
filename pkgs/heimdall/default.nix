{ stdenv, fetchFromGitHub, lib, pkgs, buildGoPackage }:

buildGoPackage rec {
  name = "heimdall";
  version = "0.2.1";
  rev = "v${version}-mainnet";

  goPackagePath = "github.com/maticnetwork/heimdall";
  buildInputs = with pkgs; [ go ];
  goDeps = ./deps.nix;
  
  buildFlagsArray = ''
    -ldflags=
    -X github.com/cosmos/cosmos-sdk/version.Name=heimdall 
    -X github.com/cosmos/cosmos-sdk/version.AppName=heimdall 
    -X github.com/cosmos/cosmos-sdk/version.Version=0.3.0-370-g0f060e0e 
    -X github.com/cosmos/cosmos-sdk/version.Commit=0f060e0ea00e10b7ddee486bf514d71f6a54d9fa 
    -s 
    -w
  '';

  src = fetchFromGitHub {
    owner = "maticnetwork";
    repo = "heimdall";
    inherit rev;
    sha256 = "1a8ia9s4jyamz6ka6dyvyy2cnfqhad4a10lwvw10dghwd7dpyyqx";
  };

  meta = with lib; {
    description = "Validator node for Matic Network";
    homepage = "https://github.com/maticnetwork/heimdall";
    platforms = platforms.unix;
  };
}
