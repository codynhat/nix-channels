{ stdenv, fetchFromGitHub, pkgs }:

stdenv.mkDerivation rec {
  name = "estuary";
  version = "0.1.3";
  rev = "v${version}";
  
  src = fetchFromGitHub {
    owner = "application-research";
    repo = "estuary";
    inherit rev;
    sha256 = "sha256-qAb2L1Cr92bGvL1GiUrGPxH1ngHHEeoULd5pZELDyP8=";
  };
  
  nativeBuildInputs = [ pkgs.git ];

  modSha256 = "0bla6zfa8qnllg54fjl129kxg86pv8xl9272gx9mmfarssnrq6je";
}