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
  {
    key = "<leader>bk";
    action = cmd "bd";
    options.desc = "Kill Buffer";
  }
  {
    key = "L";
    action = cmd "bnext";
    options.desc = "Next Buffer";
  }
  {
    key = "H";
    action = cmd "bprevious";
    options.desc = "Previous Buffer";
  }
  # << BUFFER

  # MOVEMENT
  { # DELETE WORD
    mode = [ "i" "t" "n" "c" ];
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
  # << MOVEMENT

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
    key = "<leader>fF";
    action = cmd "!dolphin .";
    options.desc = "Open dolphin here";
  }
  # << QUIT

  # WINDOWS
  {
    key = "<leader>wv";
    action = "<cmd>vsplit<cr>";
    options.desc = "Split Vertical";
  }
  {
    key = "<leader>ws";
    action = "<cmd>split<cr>";
    options.desc = "Split Horizontal";
  }
  {
    key = "<leader>wh";
    action = "<c-w>h";
    options.desc = "Go Left";
  }
  {
    key = "<leader>wl";
    action = "<c-w>l";
    options.desc = "Go Right";
  }
  {
    key = "<leader>wk";
    action = "<c-w>k";
    options.desc = "Go Up";
  }
  {
    key = "<leader>wj";
    action = "<c-w>j";
    options.desc = "Go Down";
  }
  {
    key = "<leader>wq";
    action = "<c-w>q";
    options.desc = "Close Window";
  }
  {
    key = "<leader>wH";
    action = "<c-w>H";
    options.desc = "Move Window Left";
  }
  {
    key = "<leader>wL";
    action = "<c-w>L";
    options.desc = "Move Window Right";
  }
  {
    key = "<leader>wK";
    action = "<c-w>K";
    options.desc = "Move Window Up";
  }
  {
    key = "<leader>wJ";
    action = "<c-w>J";
    options.desc = "Move Window Down";
  }
  {
    key = "<leader>wo";
    action = "<c-w>o";
    options.desc = "Close All Other Windows";
  }
  # << Windows
]
