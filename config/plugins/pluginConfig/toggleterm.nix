{ cmd, ... }:

{
  plugins.toggleterm = {
    enable = true;
    size = 17;
    direction = "float";
    openMapping = "<c-/>";
  };

  keymaps = let terminalCommand = cmd "ToggleTerm size=17";
  in [
    # TOGGLETERM
    {
      key = "<leader>to";
      action = terminalCommand;
      options.desc = "Toggle ToggleTerm";
    }
    {
      key = "<leader>ts";
      action = "ToggleTermSendVisualLines";
      options.desc = "Send Selected Lines To Term";
    }
    # {
    #   mode = [ "n" "t" ];
    #   key = "<C-/>";
    #   action = terminalCommand;
    #   options.desc = "Toggle ToggleTerm";
    # }
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
  ];
}
