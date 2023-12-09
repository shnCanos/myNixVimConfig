{ ... }:
let
  cmd = command: "<cmd>${command}<cr>";
  terminalCommand = cmd "ToggleTerm size=17";
in [
  # TOGGLETERM
  {
    mode = "n";
    key = "<leader>ot";
    action = terminalCommand;
    options.desc = "Toggle ToggleTerm";
  }
  {
    mode = [ "n" "t" ];
    key = "<C-k>";
    action = terminalCommand;
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
