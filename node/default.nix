{ lib, buildNpmPackage }:
buildNpmPackage {
  pname = "example-nodejs";
  version = "0.1.0";

  src = ./.;

  npmDepsHash = lib.fakeHash;

  meta = {
    description = "A example nodejs project using nix";
    homepage = "https://github.com/";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "example";
  };
}
