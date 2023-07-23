{config, ...}: {
  imports = [
    ./telescope.nix
    ./bufferline.nix
  ];

  plugins = {
    nvim-autopairs.enable = true;
    lualine.enable = true;
    nvim-lightbulb.enable = true;

    treesitter.enable = true;
    lsp.enable = true;

    dashboard.enable = true;

    auto-save = {
      enable = true;
      executionMessage.message = "";
    };

    # nix
    nix.enable = true;
    treesitter = {
      nixGrammars = true;
      nixvimInjections = true;
    };
    lsp.servers.nixd.enable = true;
  };
}
