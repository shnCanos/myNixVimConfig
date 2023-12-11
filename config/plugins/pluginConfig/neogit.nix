{ ... }:

{
  plugins.neogit.enable = true;
  keymaps = let cmd = command: "<cmd>${command}<cr>";
  in [{
    key = "<leader>gg";
    action = cmd "Neogit";
    options.desc = "Open Neogit";
  }];
}
