{ fetchFromGitHub, lib, rustPlatform, pkgs }:

rustPlatform.buildRustPackage rec {
  pname = "graph-node";
  version = "0.23.1";
  rev = "v${version}";

  nativeBuildInputs = [ pkgs.libiconv pkgs.postgresql_11 pkgs.pkg-config ]; 
  buildInputs = [ pkgs.openssl ];
  doCheck = false;

  src = fetchFromGitHub {
    owner = "graphprotocol";
    repo = pname;
    inherit rev;
    sha256 = "0r78z4b07vqlcdvfwcal96r8k7hs80dynxp6rg0zl2r6b0nvn3m5";
  };

  cargoSha256 = "0wj9prdaahi77iybwg24ywl2af31nymmvaqd2f5azawdb1057l3s";

  meta = with lib; {
    description = "Graph Node indexes data from blockchains such as Ethereum and serves it over GraphQL";
    homepage = "https://github.com/graphprotocol/graph-node";
  };
}
