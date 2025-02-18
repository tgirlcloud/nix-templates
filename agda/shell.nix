{
  stdenv,
  mkShell,
  time,
  inputs,
  self ? inputs.self,
}:
mkShell {
  inputsFrom = [self.packages.${stdenv.hostPlatform.system}.default];
  packages = [
    time
  ];
}
