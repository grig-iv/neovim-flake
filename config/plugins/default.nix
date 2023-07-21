{config, ...}: {
  plugins = {
    nvim-autopairs.enable = true;
    lualine.enable = true;
    auto-save.enable = true;
    nvim-lightbulb.enable = true;

    barbar = {
      enable = true;
      autoHide = true;
    };

    treesitter. enable = true;
    lsp. enable = true;

    # nix
    nix.enable = true;
    treesitter = {
      nixGrammars = true;
      nixvimInjections = true;
    };
    lsp.servers.nixd.enable = true;
  };
}
