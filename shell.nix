{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  # apm itself is fetched on demand via `uvx --from apm-cli apm` (see justfile);
  # uv provides uvx, just runs the recipes.
  packages = [
    pkgs.just
    pkgs.uv
  ];
}
