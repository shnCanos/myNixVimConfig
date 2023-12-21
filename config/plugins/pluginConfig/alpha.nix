{ cmd, ... }:

{
  plugins.alpha = {
    enable = true;
    layout = [
      {
        type = "padding";
        val = 4;
      }
      {
        opts = {
          hl = "Type";
          position = "center";
        };
        type = "text";
        val = [
          "        ██████╗  █████╗ ███╗   ██╗██████╗  █████╗ ███╗   ██╗ █████╗         "
          "        ██╔══██╗██╔══██╗████╗  ██║██╔══██╗██╔══██╗████╗  ██║██╔══██╗        "
          "        ██████╔╝███████║██╔██╗ ██║██║  ██║███████║██╔██╗ ██║███████║        "
          "        ██╔══██╗██╔══██║██║╚██╗██║██║  ██║██╔══██║██║╚██╗██║██╔══██║        "
          "        ██████╔╝██║  ██║██║ ╚████║██████╔╝██║  ██║██║ ╚████║██║  ██║        "
          "        ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝        "
          "                                                                            "
          "                        ██████╗ ███████╗███████╗                            "
          "                        ██╔══██╗██╔════╝██╔════╝                            "
          "                        ██║  ██║█████╗  █████╗                              "
          "                        ██║  ██║██╔══╝  ██╔══╝                              "
          "                        ██████╔╝███████╗███████╗                            "
          "                        ╚═════╝ ╚══════╝╚══════╝                            "
          "                                                                            "
        ];
      }
      {
        type = "padding";
        val = 10;
      }
      {
        type = "group";
        opts.spacing = 2;
        val = [
          {
            command = cmd "ene";
            desc = "  New file";
            shortcut = "n";
          }
          {
            command = cmd "Telescope projects";
            desc = "󱓴 Find Project";
            shortcut = "p";
          }
          {
            command = cmd "Telescope find_files";
            desc = "󰍉 Find File";
            shortcut = "f";
          }
          {
            command = cmd "Telescope oldfiles";
            desc = "  Recent Files";
            shortcut = "r";
          }
          {
            command = cmd "SessionRestore";
            desc = " Restore Session (cwd)";
            shortcut = "s";
          }
          {
            command = cmd "qa";
            desc = "󰗼 Quit Neovim";
            shortcut = "q";
          }
        ];
      }
      {
        type = "padding";
        val = 3;
      }
      {
        opts = {
          hl = "Keyword";
          position = "center";
        };
        type = "text";
        val = "Bandana dee's extremely cool config";
      }
    ];
  };

  keymaps = [{
    key = "<leader>;";
    action = cmd "Alpha";
    options.desc = "Open Alpha";
  }];

}

