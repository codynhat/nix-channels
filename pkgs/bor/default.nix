{ stdenv, fetchFromGitHub, lib, pkgs, buildGoModule }:

buildGoModule rec {
  name = "bor";
  version = "0.2.6";
  rev = "codynhat";

  vendorSha256 = null;

  doCheck = false;

  subPackages = [
    "cmd/abidump"
    "cmd/abigen"
    "cmd/bootnode"
    "cmd/checkpoint-admin"
    "cmd/clef"
    "cmd/devp2p"
    "cmd/ethkey"
    "cmd/evm"
    "cmd/faucet"
    "cmd/geth"
    "cmd/p2psim"
    "cmd/puppeth"
    "cmd/rlpdump"
    "cmd/utils"
  ];

  postInstall = ''
    mv -v $out/bin/geth $out/bin/bor
  '';

  src = fetchFromGitHub {
    owner = "codynhat";
    repo = "bor";
    inherit rev;
    sha256 = "0inp5jbcdyygqjgkkb7xn8fm8hcdzvx6413fcqw9jmhqkz06qkai";
  };

  meta = with lib; {
    description = "Official Golang implementation of the Matic protocol";
    homepage = "https://github.com/maticnetwork/bor";
    platforms = platforms.unix;
  };
}
