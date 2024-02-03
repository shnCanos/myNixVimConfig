{ cmd, pkgs, ... }:

{
  plugins.alpha = {
    enable = false;
    # package = pkgs-alphanvim.vimPlugins.alpha-nvim;
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
          "                   ██╗   ██╗███████╗███████╗███╗   ███╗                      "
          "                   ██║   ██║██╔════╝██╔════╝████╗ ████║                      "
          "                   ██║   ██║█████╗  █████╗  ██╔████╔██║                      "
          "                   ╚██╗ ██╔╝██╔══╝  ██╔══╝  ██║╚██╔╝██║                      "
          "                    ╚████╔╝ ███████╗███████╗██║ ╚═╝ ██║                      "
          "                     ╚═══╝  ╚══════╝╚══════╝╚═╝     ╚═╝                      "
        ];
      }
      {
        type = "padding";
        val = 8;
      }
      {
        type = "group";
        opts.spacing = 1;
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
            command = cmd "Oil";
            desc = "󰥨 File Explorer";
            shortcut = "e";
          }
          {
            command = cmd "Telescope find_files";
            desc = "󰍉 Telescope Find Files";
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
            command = cmd "Neogit";
            desc = "󰊢 Open Neogit";
            shortcut = "g";
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
        val = "Bandana dee's supercool config";
      }
    ];
  };

  keymaps = [{
    key = "<leader>;";
    action = cmd "Alpha";
    options.desc = "Open Alpha";
  }];

}

