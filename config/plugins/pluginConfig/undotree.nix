{ ... }: {
  plugins.undotree.enable = true;

  keymaps = let cmd = command: "<cmd>${command}<cr>";
  in [
    # Open UndoTree
    {
      key = "<leader>fu";
      action = cmd "UndotreeShow";
      options.desc = "Find Undo";
    }
  ];
}
