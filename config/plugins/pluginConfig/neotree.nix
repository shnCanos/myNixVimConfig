{ cmd, ... }:

{
  plugins.neo-tree = {
    enable = true; # Neotree
    window = {
      mappings = {
        "<space>" = "none"; # Because it hangs
        "<tab>" = "toggle_node";
      };
    };

  };

  keymaps = [
    # Neotree
    {
      key = "<leader>e";
      action = cmd "Neotree toggle";
      options.desc = "Open/Focus neotree";
    }
    {
      key = "<leader>fR";
      action = "${cmd "Neotree reveal_force_cwd"}r";
      options.desc = "Rename file";
    }
    {
      key = "<leader>fD";
      action = "${cmd "Neotree reveal_force_cwd"}d";
      options.desc = "Delete file";
    }

  ];
}
