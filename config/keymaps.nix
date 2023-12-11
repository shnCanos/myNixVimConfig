{ ... }:

let cmd = command: "<cmd>${command}<cr>";
in [
  # BUFFER
  {
    key = "<leader>bs";
    action = cmd "w";
    options.desc = "Save buffer";
  }
  {
    key = "<leader>bK";
    action = cmd "bd!";
    options.desc = "Force Kill Buffer";
  }
  {
    key = "<leader>bd";
    action = cmd "!rm %";
    options.desc = "Delete file";
  }
  # -- BUFFER

  # DELETE WORD
  {
    mode = [ "i" "t" "n" ];
    key = "<c-BS>";
    action = "<c-w>";
  }
  # Better movement
  # {
  #   key = "j";
  #   action = "gj";
  # }
  # {
  #   key = "k";
  #   action = "gk";
  # }
  # Removed because commands like dj would not work properly lol

  # QUIT
  {
    key = "<leader>qq";
    action = cmd "qa";
  }
  {
    key = "<leader>qw";
    action = cmd "wqa";
  }
  {
    key = "<leader>Sf";
    action = cmd "!dolphin";
    options.desc = "Open dolphin here";
  }
  # -- QUIT

  # WINDOWS
  {
    mode = "n";
    key = "<leader>wv";
    action = "<cmd>vsplit<cr>";
    options.desc = "Split Vertical";
  }
  {
    mode = "n";
    key = "<leader>ws";
    action = "<cmd>split<cr>";
    options.desc = "Split Horizontal";
  }
  {
    mode = "n";
    key = "<leader>wh";
    action = "<c-w>h";
    options.desc = "Go Left";
  }
  {
    mode = "n";
    key = "<leader>wl";
    action = "<c-w>l";
    options.desc = "Go Right";
  }
  {
    mode = "n";
    key = "<leader>wk";
    action = "<c-w>k";
    options.desc = "Go Up";
  }
  {
    mode = "n";
    key = "<leader>wj";
    action = "<c-w>j";
    options.desc = "Go Down";
  }
  {
    mode = "n";
    key = "<leader>wq";
    action = "<c-w>q";
    options.desc = "Close Window";
  }
  {
    mode = "n";
    key = "<leader>wH";
    action = "<c-w>H";
    options.desc = "Move Window Left";
  }
  {
    mode = "n";
    key = "<leader>wL";
    action = "<c-w>L";
    options.desc = "Move Window Right";
  }
  {
    mode = "n";
    key = "<leader>wK";
    action = "<c-w>K";
    options.desc = "Move Window Up";
  }
  {
    mode = "n";
    key = "<leader>wJ";
    action = "<c-w>J";
    options.desc = "Move Window Down";
  }
  {
    mode = "n";
    key = "<leader>wo";
    action = "<c-w>o";
    options.desc = "Close All Other Windows";
  }
  # -- Windows
]
