# modified from
#  https://github.com/isabelroses/dotfiles/blob/c4b76ef3db97976ba7a26127d38cae7a11c056e9/modules/flake/lib/default.nix
#
# following https://github.com/NixOS/nixpkgs/blob/77ee426a4da240c1df7e11f48ac6243e0890f03e/lib/default.nix
# as a rough template we can create our own extensible lib and expose it to the flake
# we can then use that elsewhere like our hosts
{ inputs, ... }:
let
  nixpkgsLib = inputs.nixpkgs.lib;

  myLib = nixpkgsLib.makeExtensible (
    self:
    let
      callLib = file: import file { lib = self; };
    in
    {
      math = callLib ./math.nix;

      # reexport from our math namespace
      inherit (self.math) increment;
    }
  );

  # we need to extend myLib with the nixpkgs lib to get the full set of functions
  # if we do it the otherway around we will get errors saying mkMerge and so on don't exist
  finalLib = myLib.extend (_: _: nixpkgsLib);
in
finalLib
