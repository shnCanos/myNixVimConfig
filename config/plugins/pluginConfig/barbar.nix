{ cmd, ... }: {
  plugins.barbar = {
    enable = true;
    autoHide = true;
    keymaps = {
      pin = "<leader>bp";
      pick = "<leader>bf";
      movePrevious = "<c-h>";
      moveNext = "<c-l>";
      close = "<leader>bk";
      previous = "H";
      next = "L";
    };
  };

  keymaps = [{
    key = "<leader>bo";
    action = cmd "BufferCloseAllButVisible";
    options.desc = "Close non-visible";
  }];
}
