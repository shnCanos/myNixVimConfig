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
]
