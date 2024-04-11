{ cmd, ... }: {

  imports = [ ./plugins ];

  config = {
    colorschemes = {
      catppuccin = {
        enable = true;
        flavour = "mocha";
        terminalColors = true; # hmm
        transparentBackground = false; # ...
      };

      base16 = let

        # Main colors
        grey = "#BBBBBB";
        red = "#DF8598";
        blue = "#AFCBFF";
        lilac = "#AA93DD";
        green = "#77dd77";

        # Blacks
        black1 = "#0E0F13";
        black2 = "#16161C";
        black3 = "#1b1c25";
        black4 = "#22252e";
        black5 = "#2E303E";
      in {
        enable = false;
        # colorscheme = "tokyo-night-dark";
        colorscheme = {
          base00 = black1;
          base01 = black2;
          base02 = black3;
          base03 = grey; # Comments
          base04 = black4;
          base05 = grey;
          base06 = black5;
          base07 = black5;
          base08 = red; # Changes the variable color
          base09 = lilac; # Changes the constants, keyword colors
          base0A = lilac; # Changes the keywords color
          base0B = green; # Strings
          base0C = blue;
          base0D = blue; # Changes the function name color
          base0E = lilac;
          base0F = red;
        };
      };
    };

    opts = {
      number = true;
      relativenumber = true;
      hlsearch = true;
      mouse = "a"; # Config agnostic because I can disable the touchpad
      breakindent = true; # Not too sure! 👍
      undofile = true; # Save undo information
      ignorecase = true;
      smartcase = true;
      termguicolors = true; # Better colors
      grepprg = "rg --vimgrep";
      showmode = false; # Dont show mode since we have a statusline
      undolevels = 10000; # More undo, probably
      linebreak = true; # Enable line wrap. Yes, I like this setting like this
      # cmdheight = 0; # Hide command line when not being used
      #
      # laststatus = 3; # Global lualine
      expandtab = false; # DO NOT Use spaces instead of tabs
      autoindent = true;
      tabstop = 2;
      shiftwidth = 2;
      splitbelow = true;
      splitright = true;
    };

    clipboard = {
      register = "unnamedplus";
      providers = {
        wl-copy.enable = true;
        xclip.enable = true;
      };
    };

    globals = {
      mapleader = " ";
      maplocalleader = " l";
      filetype_pl = "prolog"; # pl = prolog, not perl
    };

    keymaps = import ./keymaps.nix { inherit cmd; };
  };
}
