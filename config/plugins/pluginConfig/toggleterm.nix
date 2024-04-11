{ pkgs, cmd, ... }:

{
  plugins.toggleterm = {
    enable = true;
    size = 17;
    direction = "float";
    openMapping = "<c-/>";
  };

  extraPlugins = let
    toggleterm-manager = pkgs.vimUtils.buildVimPlugin {
      name = "toggleterm-manager";
      src = pkgs.fetchFromGitHub {
        owner = "ryanmsnyder";
        repo = "toggleterm-manager.nvim";
        rev = "31318b85a7cc20bf50ce32aedf4e835844133863";
        hash = "sha256-7t61kcqeOS9hPXc9y88Sa8D0ZXIqxCXtxFQzmHKFJ8c=";
      };
    };
  in [ toggleterm-manager ];

  extraConfigLua = ''
    require("toggleterm-manager").setup()
  '';

  keymaps = let terminalCommand = cmd "ToggleTerm size=17";
  in [
    # TOGGLETERM
    {
      key = "<leader>to";
      action = terminalCommand;
      options.desc = "Toggle ToggleTerm";
    }
    {
      key = "<leader>tv";
      action = "ToggleTermSendVisualLines";
      options.desc = "Send Selected Lines To Term";
    }
    {
      key = "<leader>ts";
      action = "Telescope toggleterm_manager";
      options.desc = "Search toggleterm Instance";
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
