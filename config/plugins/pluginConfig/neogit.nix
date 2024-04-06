{ cmd, ... }:

{
  plugins.neogit.enable = true;
  keymaps = [{
    key = "<leader>gn";
    action = cmd "Neogit";
    options.desc = "Open Neogit";
  }];
}
