{ stdenv, buildGoModule, fetchFromGitHub, libimobiledevice }:

let
  new_libimobiledevice = libimobiledevice.overrideAttrs (oldAttrs: rec {
      src = fetchFromGitHub {
        owner = "codynhat";
        repo = "libimobiledevice";
        rev = "09e1642b64d04cda0e1f3bbc9e5f0554381a5bbd";
        sha256 = "1d3nl591c8zqisqxwzi4x2s13jlk4mfijm8bljl4gnrfk0f5z8qp";
      };
    });

in
buildGoModule rec {
  pname = "ipfs-ios-backup";
  version = "0.3.1";
  rev = "v${version}";

  src = fetchFromGitHub {
    owner = "codynhat";
    repo = "ipfs-ios-backup";
    inherit rev;
    sha256 = "0d2vhb49sqi51rz3j2vzxmpyfkhdls8yvmnf8shz1067945cspsw";
  };

  modSha256 = "0bla6zfa8qnllg54fjl129kxg86pv8xl9272gx9mmfarssnrq6j0";

  buildInputs = [ new_libimobiledevice ];

  meta = with stdenv.lib; {
    description = "Backup iOS devices to IPFS";
    homepage = "https://github.com/codynhat/ipfs-ios-backup";
    license = licenses.mit;
    platforms = platforms.unix;
  };
}
