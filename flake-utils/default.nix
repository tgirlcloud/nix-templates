{
  lib,
  stdenv,
}:
stdenv.mkDerivation {
  pname = "example-flake-utils";
  version = "0.1.0";

  src = ./.;

  meta = {
    description = "A example flake-utils project using nix";
    homepage = "https://github.com/";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "example";
  };
}
