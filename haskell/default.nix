{ lib, haskellPackages }:
haskellPackages.mkDerivation {
  pname = "example-haskell";
  version = "0.1";

  src = ./.;

  isLibrary = true;
  isExecutable = true;

  libraryHaskellDepends = with haskellPackages; [ ];
  executableHaskellDepends = with haskellPackages; [ ];

  description = "A example haskell project using nix";
  homepage = "https://github.com/";
  maintainers = with lib.maintainers; [ ];
  license = lib.licenses.mit;
  mainProgram = "example";
}
