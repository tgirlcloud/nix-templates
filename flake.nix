{
  inputs = { };

  outputs = _: {
    templates = {
      c = {
        path = ./c;
        description = "A C/C++ template";
      };

      cpp = {
        path = ./c;
        description = "A C/C++ template";
      };

      latex = {
        path = ./latex;
        description = "A LaTeX template";
      };

      go = {
        path = ./go;
        description = "A Golang template";
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

      flake-utils = {
        path = ./flake-utils;
        description = "A flake-utils template";
      };
    };
  };
}
