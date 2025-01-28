{
  mkShell,
  callPackage,

  # extra tooling
  clippy,
  rustfmt,
  rust-analyzer,
}:
let
  defaultPackage = callPackage ./default.nix { };
in
mkShell {
  inputsFrom = [ defaultPackage ];

  packages = [
    clippy
    rustfmt
    rust-analyzer
  ];
}
