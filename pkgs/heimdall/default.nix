{ stdenv, fetchFromGitHub, lib, pkgs, buildGoPackage }:

stdenv.mkDerivation rec {
  name = "heimdall";
  version = "0.2.1";
  rev = "v${version}-mainnet";

  buildInputs = with pkgs; [ go ];
  
  preBuild = ''
    export HOME="$(pwd)/.home"
  '';

  postInstall = ''
    pwd
    ls -la .home/
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
