{ stdenv, fetchzip, lib }:

stdenv.mkDerivation rec {
  name = "openethereum";
  version = "3.2.5";
  src = fetchzip {
    url = "https://github.com/openethereum/openethereum/releases/download/v${version}/openethereum-macos-v${version}.zip";
    sha256 = "0l6kmm2d80h32c03sbbl5rvgr0w1piq4452cibq1pyx44vvp3hpx";
    stripRoot = false;
  };

  installPhase = ''
    install -m755 -D openethereum $out/bin/openethereum
  '';

  meta = with lib; {
    description = "Fast, light, robust Ethereum implementation";
    homepage = "http://parity.io/ethereum";
    license = licenses.gpl3;
    maintainers = with maintainers; [ akru xrelkd ];
    platforms = platforms.unix;
  };
}