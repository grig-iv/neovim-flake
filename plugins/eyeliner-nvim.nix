{
  config,
  lib,
  pkgs,
  helpers,
  ...
}:
with lib; let
  cfg = config.plugins.eyeliner;
in {
  options.plugins.eyeliner = {
    enable = mkEnableOption "Move faster with unique f/F indicators for each word on the line.";

    package = mkOption {
      type = types.package;
      default = pkgs.vimPlugins.eyeliner-nvim;
      description = "Plugin to use for eyeliner.nvim";
    };

    highlightOnKey = helpers.defaultNullOpts.mkBool true "Show highlights only after keypress";
    dim = helpers.defaultNullOpts.mkBool false "Dim all other characters if set to true";
  };

  config = let
    setupOptions = {
      highlight_on_key = cfg.highlightOnKey;
      dim = cfg.dim;
    };
  in
    mkIf cfg.enable {
      extraPlugins = [cfg.package];
      extraConfigLua = ''
        require('eyeliner').setup(${helpers.toLuaObject setupOptions})
      '';
    };
}
