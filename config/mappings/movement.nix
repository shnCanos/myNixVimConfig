{ ... }:

let cmd = command: "<cmd>${command}<cr>";
in [
  # DELETE WORD
  {
    mode = [ "i" "t" "n" ];
    key = "<c-BS>";
    action = "<c-w>";
  }
  # Better movement
  {
    key = "j";
    action = "gj";
  }
  {
    key = "k";
    action = "gk";
  }
  {
    key = "<leader>qq";
    action = cmd "qa";
  }
  {
    key = "<leader>qw";
    action = cmd "wqa";
  }
]
