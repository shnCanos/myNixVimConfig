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
    };

    extraPlugins = with pkgs.vimPlugins; [ lazygit-nvim ];
  };
}
