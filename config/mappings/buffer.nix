{ ... }:

[
  # BUFFER
  {
    key = "<leader>bs";
    action = "<cmd>w<CR>";
    options.desc = "Save buffer";
  }
  {
    key = "<leader>bK";
    action = "<cmd>bd!<CR>";
    options.desc = "Force Kill Buffer";
  }
  {
    key = "<leader>bd";
    action = "<cmd>!rm %<CR>";
    options.desc = "Delete file";
  }
]
