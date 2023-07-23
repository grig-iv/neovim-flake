{
  config,
  lib,
  ...
}:
with lib; {
  options.colors = {
    accent = mkOption {
      type = types.str;
      default = "FF0000";
    };
  };
}
