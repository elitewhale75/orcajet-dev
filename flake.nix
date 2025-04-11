{
  description = "Orcajet.dev";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = inputs.nixpkgs.lib.systems.flakeExposed;

      perSystem = {pkgs, ...}: {
        devShells.default = pkgs.mkShell {
          name = "hello-svelte";
          buildInputs = with pkgs; [
          ];
        };
      };
    };
}
