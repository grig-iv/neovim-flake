{
  config,
  lib,
  pkgs,
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

    highlightOnKey = mkOption {
        type = types.nullOr types.bool;
        description = "Show highlights only after keypress";
        default = null;
      };
  };

  config = mkIf cfg.enable {
    extraPlugins = [cfg.package];

    extraConfigLua = ''
      require('eyeliner').setup {
        highlight_on_key = true,
      }
    '';
  };
}
