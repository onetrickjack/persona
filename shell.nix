{ pkgs ? import <nixpkgs> {} }:
let
  unstable = import
    (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/master) ;
in
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [
      ruby_3_4
      jekyll
      bundler
      libyaml
    ];
}

