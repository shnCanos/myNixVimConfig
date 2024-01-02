{ ... }: {
  plugins.barbar = {
    enable = true;
    autoHide = true;
    keymaps = {
      pin = "<leader>bp";
      pick = "<leader>bf";
      movePrevious = "<C-h>";
      moveNext = "<C-l>";
    };
  };
}
