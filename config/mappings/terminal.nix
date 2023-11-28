{ ... }:
let cmd = command: "<cmd>${command}<cr>";
in [
  # TOGGLETERM
  {
    mode = "n";
    key = "<leader>ot";
    action = cmd "ToggleTerm size=17";
    options.desc = "Toggle ToggleTerm";
  }
  {
    mode = "t";
    key = "<ESC>";
    action = "<c-\\><c-n>";
  }
  {
    mode = "n";
    key = "<c-c>";
    action = "i<c-c><ESC>";
    options.desc = "Send ^C to the terminal";
  }
  {
    mode = "t";
    key = "<s-esc>";
    action = "<c-\\><c-n>";
  }
  {
    mode = "t";
    key = "<s-bs>";
    action = "<bs>";
  }
]
