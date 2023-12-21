{ cmd, ... }:

{
  plugins.oil = {
    enable = true;
    keymaps = {
      "q" = "actions.close";
      "<tab>" = "actions.select";
      "<bs>" = "actions.parent";
    };
  };

  keymaps = [
    # Oil
    {
      key = "<leader>ff";
      action = cmd "Oil";
      options.desc = "Open oil";
    }
  ];

}
