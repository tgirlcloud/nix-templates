{
  mkShellNoCC,

  # extra tooling
  eslint_d,
  prettierd,
  typescript,

  callPackage,
}:
let
  defaultPackage = callPackage ./default.nix { };
in
mkShellNoCC {
  inputsFrom = [ defaultPackage ];

  packages = [
    eslint_d
    prettierd
    typescript
  ];

  shellHook = ''
    eslint_d start # start eslint daemon
    eslint_d status # inform user about eslint daemon status
  '';
}
