{
  mkShell,
  callPackage,
}:
let
  defaultPackage = callPackage ./default.nix { };
in
mkShell {
  inputsFrom = [ defaultPackage ];

  packages = [ ];
}
