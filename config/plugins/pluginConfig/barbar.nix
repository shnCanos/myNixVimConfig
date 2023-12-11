{ ... }:

{
  plugins.barbar = {
    enable = true;
    autoHide = true;
    keymaps = {
      close = "<leader>bk";
      next = "L";
      previous = "H";
      pin = "<leader>bp";
      pick = "<leader>bf";
      movePrevious = "<C-h>";
      moveNext = "<C-l>";
    };
  };
}
