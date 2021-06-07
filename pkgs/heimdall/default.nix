{ stdenv, fetchFromGitHub, lib, pkgs }:

stdenv.mkDerivation rec {
  name = "heimdall";
  version = "0.2.1";
  rev = "v${version}-mainnet";

  buildInputs = with pkgs; [ go_1_15 ];

  src = fetchFromGitHub {
    owner = "maticnetwork";
    repo = "heimdall";
    inherit rev;
    sha256 = "0d2vhb49sqi51rz3j2vzxmpyfkhdls8yvmnf8shz1067945cspsw";
  };

  meta = with lib; {
    description = "Validator node for Matic Network";
    homepage = "https://github.com/maticnetwork/heimdall";
    platforms = platforms.unix;
  };
}