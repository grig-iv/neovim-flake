{config, lib, ...}: {
  imports = [
    ./telescope.nix
    ./bufferline.nix
    ./substitute.nix
    ./nvim-tree.nix
  ];

  plugins = {
    nvim-autopairs.enable = true;
    nvim-lightbulb.enable = true;
    treesitter.enable = true;
    dashboard.enable = true;

    lsp = {
      enable = true;
      keymaps = {
        diagnostic = {
          "<S-Left>" = "goto_prev";
          "<S-Right>" = "goto_next";
        };
        lspBuf = {
          "gd" = "definition";
          "gD" = "references";
          "gt" = "declaration";
          "gi" = "implementation";
          "h" = "hover";
          "H" = "signature_help";
          "<C-a>" = "code_action";
          "<Leader>rn" = "rename";
        };
      };
    };

    eyeliner = {
      enable = true;
    };

    lualine = {
      enable = true;
      extensions = ["nvim-tree"];
    };

    auto-save = {
      enable = true;
      executionMessage.message = "";
    };

    # ts
    lsp.servers.tsserver.enable = true;

    # go
    lsp.servers.gopls.enable = true;

    # nix
    nix.enable = true;
    treesitter = {
      nixGrammars = true;
      nixvimInjections = true;
    };
    lsp.servers.nixd.enable = true;
  };
}
