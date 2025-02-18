{
  agdaPackages,
  lib,
}:
let
  everythingFile = "./Project.agda";
  pname = "agda-project";
  version = "0.0.1";
in
agdaPackages.mkDerivation {
  inherit everythingFile pname version;

  src = builtins.path {
    path = lib.sources.cleanSource ./.;
    name = pname;
  };

  buildInputs = [
    agdaPackages.standard-library
    agdaPackages.cubical
  ];

  meta = {
    description = "A example Agda project using nix";
    homepage = "https://github.com/";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    platforms = lib.platforms.all;
  };
}
