{
  mkShellNoCC,
  callPackage,

  # extra tooling
  libcxx,
  gnumake,
  cppcheck,
  clang-tools,
}:
let
  defaultPackage = callPackage ./default.nix { };
in
mkShellNoCC {
  inputsFrom = [ defaultPackage ];

  packages = [
    libcxx # stdlib for cpp
    gnumake # builder
    cppcheck # static analysis
    clang-tools # fix headers not found
  ];
}
