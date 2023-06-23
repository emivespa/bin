{
  description = "dev env with the more essential dependencies";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit # overlays
            system;
        };
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            fzf
            jq
            moreutils
            xsel

            # dev
            gnumake
            shellcheck

            #
            curl
            wget
          ];
          shellHook =
            "echo 'entering dev shell with the more essential dependencies'";
        };
      });
}
