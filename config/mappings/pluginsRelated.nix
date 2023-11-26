{ ... }:
let
  cmd = command: "<cmd>${command}<cr>";
  # plugins.toggleterm.enable
in [
  # TOGGLETERM

  {
    mode = "n";
    key = "<leader>ot";
    action = cmd "ToggleTerm";
    options.desc = "Toggle ToggleTerm";
  }
  {
    mode = "t";
    key = "<ESC>";
    action = "<c-\\><c-n>";
  }
  {
    mode = "n";
    key = "<c-c>";
    action = "i<c-c><ESC>";
    options.desc = "Send ^C to the terminal";
  }
  {
    mode = "t";
    key = "<s-esc>";
    action = "<c-\\><c-n>";
  }
  {
    mode = "t";
    key = "<s-bs>";
    action = "<bs>";
  }

] ++ [{
  key = "<leader>gg";
  action = cmd "Neogit";
  options.desc = "Open Neogit";
}] ++

# plugins.project-nvim.enable
[
  {
    # ADD PROJECT
    key = "<leader>pa";
    action = cmd "AddProject";
    options.desc = "Add Project";
  }
  {
    # (For some reason this gives me an error if I put it in telescope itself)
    key = "<leader>pf";
    action = cmd "Telescope projects";
    options.desc = "Find Projects";
  }
] ++ [
  # plugins.undotree.enable
  # Open UndoTree
  {
    key = "<leader>fu";
    action = cmd "UndotreeShow";
    options.desc = "Find Undo";
  }
] ++

# neotree
[
  {
    key = "<leader>e";
    action = cmd "Neotree toggle";
    options.desc = "Open/Focus neotree";
  }
  {
    key = "<leader>ff";
    action = cmd "Neotree toggle reveal_force_cwd";
    options.desc = "Reveal File in Neotree";
  }
]
# HACK Telescope
# [{
#   key = "<leader>ff";
#   action = cmd "Telescope file_browser";
#   options.desc = "Browse Files";
# }]
