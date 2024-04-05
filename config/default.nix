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
