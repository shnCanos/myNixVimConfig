{ ... }:
# plugins.toggleterm.enable
[
  # TOGGLETERM

  {
    mode = "n";
    key = "<leader>ot";
    action = "<cmd>ToggleTerm<CR>";
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
  action = "<cmd>Neogit<CR>";
  options.desc = "Open Neogit";
}] ++

# plugins.project-nvim.enable
[
  # ADD PROJECT
  {
    mode = "n";
    key = "<leader>pa";
    action = "<cmd>AddProject<CR>";
    options.desc = "Add Project";
  }
] ++ [
  # plugins.undotree.enable
  # Open UndoTree
  {
    mode = "n";
    key = "<leader>fu";
    action = "<cmd>UndotreeShow<CR>";
    options.desc = "Find Undo";
  }
] ++

# neotree
[{
  mode = "n";
  key = "<leader>e";
  action = "<cmd>Neotree toggle reveal_force_cwd<CR>";
  options.desc = "Open/Focus neotree";
}] ++

  # Telescope (For some reason this gives me an error if I put it in telescope itself)
[{
  mode = "n";
  key = "<leader>pp";
  action = "<cmd>Telescope projects<CR>";
  options.desc = "Find Projects";
}]
