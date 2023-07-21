{
  description = "A very basic flake";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    nixvim,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem
    (system: let
      nixvim' = nixvim.legacyPackages."${system}";

      nvim = nixvim'.makeNixvimWithModule {
        module = {
          imports = [
            ./config
            ./modules
          ];
        };
        pkgs = import nixpkgs {inherit system;};
      };
    in {
      packages = {
        inherit nvim;
        default = nvim;
      };
    })
    // {
      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.alejandra;
    };
}
