{ cmd, ... }:

[
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
  # {
  #   key = "<leader>bk";
  #   # HACK: so it doesn't close the window
  #   # Issue: If there are two windows with the same buffer opened,
  #   # It closes both (for obvious reasons). 
  #   # action = "<c-w>s" + "<c-w>j" + cmd "bl" + "<c-w>k" + cmd "bd";
  #   action = cmd "bd";
  #   options.desc = "Kill Buffer";
  # }
  # {
  #   key = "L";
  #   action = cmd "bnext";
  #   options.desc = "Next Buffer";
  # }
  # {
  #   key = "H";
  #   action = cmd "bprevious";
  #   options.desc = "Previous Buffer";
  # }
  # << BUFFER

  # MOVEMENT
  { # DELETE WORD
    mode = [ "i" "t" "n" "c" ];
    key = "<c-BS>";
    action = "<c-w>";
  }
  # << MOVEMENT

  # QUIT
  {
    key = "<leader>qq";
    action = cmd "qa";
    options.desc = "Quit all";
  }
  {
    key = "<leader>qw";
    action = cmd "wqa";
    options.desc = "Quit+Write all";
  }
  {
    key = "<leader>qQ";
    action = cmd "qa!";
    options.desc = "Force Quit+Write all";
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
  # << WINDOWS

  # OTHER
  {
    key = "<leader>fF";
    action = cmd "!dolphin .";
    options.desc = "Open dolphin here";
  }
  {
    key = "<leader>ih";
    action = "r“";
    options.desc = "Replace left quotation mark here";
  }
  {
    key = "<leader>il";
    action = "r”";
    options.desc = "Replace right quotation mark here";
  }
  # << OTHER

  # REMOVED
  # ---
  # REASON: lack of use
  # {
  #   key = "<leader>bd";
  #   action = cmd "!rm %";
  #   options.desc = "Delete file";
  # }
  # ---
  # REASON: commands like dj would not work properly
  # Better movement
  # {
  #   key = "j";
  #   action = "gj";
  # }
  # {
  #   key = "k";
  #   action = "gk";
  # }
  # ---
  # << REMOVED

]
