{
  mkShellNoCC,

  callPackage,
}:
let
  defaultPackage = callPackage ./default.nix { };
in
mkShellNoCC {
  inputsFrom = [ defaultPackage ];

  packages = [ ];

  shellHook = ''
    echo "Hello, world!"
  '';
}
