{config, ...}: {
  imports = [
    ./telescope.nix
    ./bufferline.nix
    ./substitute.nix
  ];

  plugins = {
    nvim-autopairs.enable = true;
    lualine.enable = true;
    nvim-lightbulb.enable = true;

    eyeliner = {
      enable = true;
      highlightOnKey = false;
    };

    treesitter.enable = true;
    lsp.enable = true;

    dashboard.enable = true;

    auto-save = {
      enable = true;
      executionMessage.message = "";
    };

    nvim-tree = {
      enable = true;
      autoClose = true;
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
