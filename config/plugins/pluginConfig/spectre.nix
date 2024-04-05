{ pkgs, cmd, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [ nvim-spectre ];

  keymaps = [{
    key = "<leader>ss";
    action = cmd "Spectre";
    options.desc = "Open Spectre";
  }];

  extraConfigLua = ''
    require("spectre").setup()
  '';
}
