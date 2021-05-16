+++
title = "Rust on NixOS"
date = 2021-05-16
+++

## `shell.nix`
- it will take a very long time for the initial shell to launch since 1000s of
  paths need to be initialized. However, subsequent shells will launch
  instantly.

  ```nix
  let
    mozilla = import (builtins.fetchTarball https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz);
    nixpkgs = import <nixpkgs> { overlays = [ mozilla ]; };
  
    rustStable = (nixpkgs.rustChannelOf { date = "2021-03-25"; channel = "stable"; }).rust.override {
      extensions = [
        "clippy-preview"
        "rustfmt-preview"
        "rust-analysis"
        "rust-std"
        "rustc-dev"
        "rust-src"
      ];
    };
  
  in
  with nixpkgs;
  
  mkShell {
    buildInputs = [
      rustStable
    ];
  
    RUST_BACKTRACE = 1;
  }
  ```

- I use this in conjunction with nvim+coc, rust-analyzer and direnv. You can find
  my configuration files for nvim, direnv etc. in [github:scriptdevil/nix-config]
  
  
[github:scriptdevil/nix-config]: https://github.com/ScriptDevil/nix-config/tree/main/.config/nixpkgs
