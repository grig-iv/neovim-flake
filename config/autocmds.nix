{config, ...}: {
  autoCmd = [
    {
      event = ["TextYankPost"];
      pattern = "*";
      command = "silent! lua vim.highlight.on_yank()";
    }
  ];
}
