{ stdenv, fetchFromGitHub, lib, pkgs, buildGoModule }:

buildGoModule rec {
  name = "heimdall";
  version = "0.2.1";
  rev = "codynhat";

  vendorSha256 = null;

  subPackages = [
    "cmd/heimdallcli"
    "cmd/heimdalld"
  ];

  src = fetchFromGitHub {
    owner = "codynhat";
    repo = "heimdall";
    inherit rev;
    sha256 = "1sv37m4jqwbwl9lsrz5dx9hz5lk6vfx72573clc8g49gp0irhwn5";
  };

  meta = with lib; {
    description = "Validator node for Matic Network";
    homepage = "https://github.com/maticnetwork/heimdall";
    platforms = platforms.unix;
  };
}
