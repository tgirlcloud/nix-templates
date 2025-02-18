{
  inputs = { };

  outputs = _: {
    templates = {
      agda = {
        path = ./agda;
        description = "An Agda template";
      };

      c = {
        path = ./c;
        description = "A C/C++ template";
      };

      cpp = {
        path = ./c;
        description = "A C/C++ template";
      };

      flake-utils = {
        path = ./flake-utils;
        description = "A flake-utils template";
      };

      go = {
        path = ./go;
        description = "A Golang template";
      };

      latex = {
        path = ./latex;
        description = "A LaTeX template";
      };

      nixpkgs-extened-lib = {
        path = ./nixpkgs-extended-lib;
        description = "A Nixpkgs extended library template";
      };

      node = {
        path = ./node;
        description = "A NodeJS template";
      };

      python = {
        path = ./python;
        description = "A Python template";
      };

      rough-base = {
        path = ./rough-base;
        description = "A Rough template";
      };

      rust = {
        path = ./rust;
        description = "A Rust template";
      };
    };
  };
}
