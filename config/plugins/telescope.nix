{config, pkgs, ...}:
{
  plugins.telescope = {
      enable = true;
      keymaps = {
        "t" = "builtin";
        "<C-Space>" = "git_files";
        "<C-S-Space>" = "find_files";
      };
    };

    extraPlugins = with pkgs; [ ripgrep ];
}
  
