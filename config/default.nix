{ pkgs, ... }: {
  imports = [ ./plugins ./mappings ];

  config = {
    colorschemes.catppuccin = {
      enable = true;
      flavour = "mocha";
      terminalColors = true; # hmm
      transparentBackground = true;
    };

    options = {
      number = true;
      relativenumber = true;
      hlsearch = true;
      mouse = "a"; # Config agnostic because I can disable the touchpad
      breakindent = true; # Not too sure! 👍
      undofile = true; # Save undo information
      ignorecase = true;
      smartcase = true;
      termguicolors = true; # Better colors
      expandtab = true; # Use spaces instead of tabs
      grepprg = "rg --vimgrep";
      showmode = false; # Dont show mode since we have a statusline
      smartindent = true;
      undolevels = 10000; # More undo, probably
      wrap = false; # Disable line wrap
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
      maplocalleader = " ";
      filetype_pl = "prolog"; # pl = prolog, not perl
    };

    extraPlugins = with pkgs.vimPlugins; [
      lazygit-nvim
      telescope-symbols-nvim
    ];
  };
}
