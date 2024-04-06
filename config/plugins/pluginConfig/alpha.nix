{ cmd, pkgs, ... }:

{
  plugins.alpha = {
    enable = true;
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
        val = let
          # Yoinked from https://github.com/siph/nixvim-flake/blob/master/config/visuals/alpha.nix after a month or so with alpha broken
          mkButton = shortcut: cmd: val: hl: {
            type = "button";
            inherit val;
            opts = {
              inherit hl shortcut;
              keymap = [ "n" shortcut cmd { } ];
              position = "center";
              cursor = 0;
              width = 40;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          };
        in [
          (mkButton "n" (cmd "ene") "  New file" "Operator")
          (mkButton "p" (cmd "Telescope projects") "󱓴 Find Project" "Operator")
          (mkButton "e" (cmd "Oil") "󰥨 File Explorer" "Operator")
          (mkButton "f" (cmd "Telescope find_files") "󰍉 Telescope Find Files"
            "Operator")
          (mkButton "r" (cmd "Telescope oldfiles") "  Recent Files" "Operator")
          (mkButton "s" (cmd "SessionRestore") " Restore Session (cwd)"
            "Operator")
          (mkButton "g" (cmd "LazyGit") "󰊢 Open LazyGit" "Operator")
          (mkButton "q" (cmd "qa") "󰗼 Quit Neovim" "Operator")
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

