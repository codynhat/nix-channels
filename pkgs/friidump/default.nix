{ stdenv, fetchFromGitHub, lib, cmake }:

stdenv.mkDerivation rec {
  name = "friidump";
  version = "0.5.3.1";
  rev = "${version}";

  src = fetchFromGitHub {
    owner = "bradenmcd";
    repo = "friidump";
    inherit rev;
    sha256 = "0vxjji9r444z3m8rb1jn0yznilhdfwc9ihbrjyf8dkzycpjpnbvi";
  };

  nativeBuildInputs = [ cmake ];

  meta = with lib; {
    description = "FriiDump - Dump Nintendo Wii and GameCube discs";
    homepage = "https://github.com/bradenmcd/friidump";
    platforms = platforms.unix;
  };
}