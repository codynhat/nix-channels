{ stdenv, fetchFromGitHub, lib, pkgs, buildGoModule }:

stdenv.mkDerivation rec {
  name = "heimdall";
  version = "0.2.1";
  rev = "v${version}-mainnet";

  buildInputs = with pkgs; [ go ];

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
