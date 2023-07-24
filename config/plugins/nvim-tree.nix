{config, ...}: {
  plugins. nvim-tree = {
    enable = true;
    autoClose = false;
    updateFocusedFile.enable = true;
    filters.dotfiles = true;
    extraOptions = {
      renderer.root_folder_label = false;
    };
  };

  maps = {
    normal = {
      "<C-Return>" = "<cmd>NvimTreeFindFileToggle<cr>";
    };
  };

  extraConfigLua = ''
    local Api = require('nvim-tree.api')
    local Event = require('nvim-tree.api').events.Event

    Api.events.subscribe(Event.TreeOpen, function()
     vim.opt_local.fillchars="eob: "
    end)
  '';
}
