{ cmd, ... }:

{
  plugins.trouble = { enable = true; };

  keymaps = [{
    key = "<leader>cx";
    action = cmd "TroubleToggle";
    options.desc = "Find diagnostics (Trouble)";
  }];
}
