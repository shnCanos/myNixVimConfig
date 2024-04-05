{ pkgs, cmd, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [ overseer-nvim ];

  keymaps = [
    {
      key = "<leader>ot";
      action = cmd "OverseerToggle";
      options.desc = "Toggle";
    }
    {
      key = "<leader>ob";
      action = cmd "OverseerBuild";
      options.desc = "Build";
    }
    {
      key = "<leader>oR";
      action = cmd "OverseerRun";
      options.desc = "Run";
    }
    {
      key = "<leader>or";
      action = cmd "OverseerRun" + cmd "OverseerToggle";
      options.desc = "Run with result";
    }
  ];

  extraConfigLua = ''
    require("overseer").setup()
  '';
}
