{ lib, clangStdenv }:
clangStdenv.mkDerivation {
  pname = "example-c-cpp";
  version = "0.0.1";

  src = ./.;

  makeFlags = [ "PREFIX=$(out)" ];

  meta = {
    description = "A example C/C++ project using nix";
    homepage = "https://github.com/";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainPackage = "example";
  };
}
