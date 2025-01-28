{
  mkShellNoCC,
  callPackage,

  # extra tooling
  just,
  texlive,
}:
let
  defaultPackage = callPackage ./default.nix { };
in
mkShellNoCC {
  inputsFrom = [ defaultPackage ];

  packages = [
    just

    (texlive.combine {
      inherit (texlive)
        scheme-medium
        biblatex
        biber
        pdfpages
        ;
    })
  ];

  shellHook = ''
    echo "Hello, world!"
  '';
}
