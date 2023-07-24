{config, ...}: {
  plugins.bufferline = {
    enable = true;
    diagnostics = true;
    showBufferCloseIcons = false;
    alwaysShowBufferline = true;
    offsets = [
      {
        filetype = "NvimTree";
        text = "Explorer";
        highlight = "Directory";
        separator = true;
      }
    ];
  };

  maps.normal = {
    # Close tab
    "<C-w>" = "<cmd>lua require('bufferline.commands').unpin_and_close()<cr>";
    "<C-S-w>" = "<cmd>BufferLineCloseOthers<cr>";

    # Navigating tabs
    "<C-Tab>" = "<cmd>BufferLineCycleNext<cr>";
    "<C-S-Tab>" = "<cmd>BufferLineCyclePrev<cr>";

    # Reordering tabs
    "<C-A-Tab>" = "<cmd>BufferLineMoveNext<cr>";
    "<C-A-S-Tab>" = "<cmd>BufferLineMovePrev<cr>";
  };
}
