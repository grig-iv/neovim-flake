{config, ...}: {
  imports = [
    ./plugins
    ./options.nix
    ./mappings.nix
    ./autocmds.nix
    ./colorscheme.nix
  ];
}
