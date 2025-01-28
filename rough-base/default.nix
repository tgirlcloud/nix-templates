{ lib, stdenv }:
stdenv.mkDerivation {
  pname = "example-rough-base";
  version = "0.1.0";

  src = lib.fileset.toSource {
    root = ./.;
    fileset = lib.fileset.intersection (lib.fileset.fromSource (lib.sources.cleanSource ./.)) (
      lib.fileset.unions [
        # files
      ]
    );
  };

  meta = {
    homepage = "https://github.com/";
    description = "An example Nix project";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainPackage = "example";
  };
}
