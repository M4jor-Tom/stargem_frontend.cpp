{
  description = "Stargem frontend — Unreal Engine 5 build dependencies (placeholder)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          name = "stargem-frontend";
          buildInputs = with pkgs; [
            # Placeholder: add UE5 dependencies as needed per environment
            cmake
            python3
          ];
        };
      });
}
