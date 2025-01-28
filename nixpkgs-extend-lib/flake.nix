{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = inputs: {
    lib = import ./lib { inherit inputs; };
  };
}
