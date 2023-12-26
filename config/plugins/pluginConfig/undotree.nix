{ cmd, ... }: {
  plugins.undotree.enable = true;

  keymaps = [
    # Open UndoTree
    {
      key = "<leader>su";
      action = cmd "UndotreeShow";
      options.desc = "Search Undo History";
    }
  ];
}
