{ cmd, ... }:

{
  plugins.neogit.enable = true;
  keymaps = [{
    key = "<leader>gg";
    action = cmd "Neogit";
    options.desc = "Open Neogit";
  }];
}
