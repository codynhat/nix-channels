{ stdenv, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "buckd";
  version = "2.6.1";
  rev = "v${version}";

  src = fetchFromGitHub {
    owner = "textileio";
    repo = "textile";
    inherit rev;
    sha256 = "0d2vhb49sqi51rz3j2vzxmpyfkhdls8yvmnf8shz1067945cspsw";
  };

  modSha256 = "0bla6zfa8qnllg54fjl129kxg86pv8xl9272gx9mmfarssnrq6j0";
}
