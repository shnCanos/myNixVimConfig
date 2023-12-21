{ cmd, ... }: {
  plugins.undotree.enable = true;

  keymaps = [
    # Open UndoTree
    {
      key = "<leader>fu";
      action = cmd "UndotreeShow";
      options.desc = "Find Undo";
    }
  ];
}
