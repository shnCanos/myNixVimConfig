{ cmd, ... }:

{
  plugins.neogen.enable = true;

  keymaps = [{
    key = "<leader>ic";
    action = cmd "Neogen";
    options.desc = "Insert Comment";
  }];
}
