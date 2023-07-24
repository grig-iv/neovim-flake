{config, ...}: {
  maps = {
    operator = {
      "iw" = "]w";
      "w" = "iw";
      "W" = "iW";
      "<Leader>w" = "w";
      "<Leader>W" = "W";
    };

    # navigation
    normalVisualOp = {
      "<C-Left>" = "B";
      "<C-Up>" = "{";
      "<C-Down>" = "}";
      "<C-Right>" = "W";

      "<Home>" = "^";
      "<End>" = "g_";

      "<PageUp>" = "<C-u>";
      "<PageDown>" = "<C-d>";
      "<C-PageUp>" = "gg";
      "<C-PageDown>" = "G";
      "<S-PageUp>" = "<C-b>";
      "<S-PageDown>" = "<C-f>";
    };

    normal = {
      "<S-Up>" = "<C-o>";
      "<S-Down>" = "<C-i>";
    };

    # enhance
    normal = {
      "Q" = "@q";
      "Y" = "y$";
      "U" = "<C-r>";
      "X" = "r";

      "j" = "J";
      "J" = "kJ";
#      "h" = "H";
    };

    normalVisualOp = {
      "<C-s>" = "<Esc><Cmd>w<CR>";
      "<C- =>" = "F.";
      "<C-.>" = "f.";
    };

    # utils
    normal = {
      "<Leader>l" = "<Cmd>noh<CR>";
      "<LocalLeader>w" = "<C-w>";
      "<LocalLeader>/" = "/";
    };
  };
}
