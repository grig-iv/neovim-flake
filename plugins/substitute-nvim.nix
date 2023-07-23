{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.plugins.substitute;
in {
  options.plugins.substitute = {
    enable = mkEnableOption "substitute.nvim aim is to provide new operator motions to make it very easy to perform quick substitutions and exchange.";

    package = mkOption {
      type = types.package;
      default = pkgs.vimPlugins.substitute-nvim;
      description = "Plugin to use for substitute.nvim";
    };
  };

  config = mkIf cfg.enable {
    extraPlugins = [cfg.package];

    extraConfigLua = ''
      require("substitute").setup()
    '';
  };
}
