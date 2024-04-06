{ pkgs, cmd, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [ lazygit-nvim ];
  plugins.neogit.enable = true;
  keymaps = [{
    key = "<leader>gg";
    action = cmd "LazyGit";
    options.desc = "Open LazyGit";
  }];
}
