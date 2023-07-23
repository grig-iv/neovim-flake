{config, ...}: {
  plugins.substitute.enable = true;
  maps = {
    normal = {
      "r" = "<cmd>lua require('substitute').operator()<cr>";
      "rr" = "<cmd>lua require('substitute').line()<cr>";
      "R" = "<cmd>lua require('substitute').eol()<cr>";
    };
    visualOnly = {
      "r" = "<cmd>lua require('substitute').visual()<cr>";
    };
  };
}
