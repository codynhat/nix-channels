{ stdenv, fetchFromGitHub, lib, pkgs }:

stdenv.mkDerivation rec {
  name = "matic-mainnet-sentry";
  version = "0.1.0";
  rev = "${version}";

  src = fetchFromGitHub {
    owner = "maticnetwork";
    repo = "launch";
    inherit rev;
    sha256 = "1a8ia9s4jyamz6ka6dyvyy2cnfqhad4a10lwvw10dghwd7dpyyqx";
  };

  meta = with lib; {
    description = "Sentry mainnet node for Matic Network";
    homepage = "https://github.com/maticnetwork/launch";
    platforms = platforms.unix;
  };
}
