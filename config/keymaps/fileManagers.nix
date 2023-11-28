{ ... }:
let cmd = command: "<cmd>${command}<cr>";
in [
  # Oil
  {
    key = "<leader>ff";
    action = cmd "Oil";
    options.desc = "Open oil";
  }

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

]
