{ stdenv, fetchFromGitHub, lib, pkgs }:

stdenv.mkDerivation rec {
  name = "bor";
  version = "0.2.6";
  rev = "v${version}";

  buildInputs = with pkgs; [ go_1_15 ];

  src = fetchFromGitHub {
    owner = "maticnetwork";
    repo = "bor";
    inherit rev;
    sha256 = "1a8ia9s4jyamz6ka6dyvyy2cnfqhad4a10lwvw10dghwd7dpyyqx";
  };

  buildPhase = ''
    make bor-all
  '';

  meta = with lib; {
    description = "Official Golang implementation of the Matic protocol";
    homepage = "https://github.com/maticnetwork/bor";
    platforms = platforms.unix;
  };
}
