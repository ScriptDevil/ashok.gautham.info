let
  nixpkgs = import <nixpkgs> { };
in
with nixpkgs;

mkShell {
  buildInputs = [
    zola
    git
  ];

  RUST_BACKTRACE = 1;
}
