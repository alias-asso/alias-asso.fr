{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        buildPkgs = with pkgs; [
          hugo
          tailwindcss_4
        ];
        devPkgs = with pkgs; [
          just
          hivemind
          watchman
        ];
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          pname = "website";
          version = "0.1.0";
          src = ./.;
          nativeBuildInputs = buildPkgs;
          buildPhase = ''
            tailwindcss -i assets/css/main.css -o assets/css/style.css -m
            hugo --minify
          '';
          installPhase = ''
            cp -r public $out
          '';
        };
        devShell = pkgs.mkShell {
          nativeBuildInputs = buildPkgs;
          buildInputs = devPkgs;
        };
      }
    );
}
