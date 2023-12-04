{ ... }:
let cmd = command: "<cmd>${command}<cr>";
in [
  # plugins.undotree.enable
  # Open UndoTree
  {
    key = "<leader>fu";
    action = cmd "UndotreeShow";
    options.desc = "Find Undo";
  }
  {
    key = "<leader>Sf";
    action = cmd "!dolphin";
    options.desc = "Open dolphin here";
  }
]
