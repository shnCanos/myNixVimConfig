{ cmd, ... }: {
  plugins.yanky = {
    enable = true;
    highlight.timer = 100;
    picker.telescope.enable = true;
  };

  keymaps = [{
    key = "<leader>sy";
    action = cmd "YankyRingHistory";
    options.desc = "Search yank history";
  }];
}
