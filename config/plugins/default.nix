{ pkgs, ... }: {

  # With config
  imports = [
    # Recover session
    ./pluginConfig/autosession.nix

    # Discord rich presence
    ./pluginConfig/presence.nix

    # Formatters
    ./pluginConfig/conform-nvim.nix
    ./pluginConfig/none-ls.nix # Also formatter? hmm

    # Terminal
    ./pluginConfig/toggleterm.nix
    ./pluginConfig/overseer.nix

    # File management
    ./pluginConfig/neotree.nix
    ./pluginConfig/oil.nix

    # Git
    ./pluginConfig/neogit.nix

    # Essentials
    ./pluginConfig/treesitter.nix
    ./pluginConfig/telescope.nix
    ./pluginConfig/lsp.nix
    ./pluginConfig/lualine.nix
    ./pluginConfig/dap.nix

    # Autocomplete
    ./pluginConfig/nvim-cmp.nix

    # Other
    ./pluginConfig/undotree.nix
    ./pluginConfig/lspsaga.nix
    ./pluginConfig/which-key.nix
    ./pluginConfig/trouble.nix
    ./pluginConfig/spectre.nix
    ./pluginConfig/neoscroll.nix

    # Note
    ./pluginConfig/neorg.nix
    # ./pluginConfig/obsidian.nix # Hmm

    # Menu
    ./pluginConfig/alpha.nix

    # Notifications
    ./pluginConfig/notify.nix

    # Tabs
    ./pluginConfig/barbar.nix

    # Too lazy to categorize
    ./pluginConfig/yanky.nix

    # ./pluginConfig/nvim-nu.nix
    # ./pluginConfig/firenvim.nix # Cool, but not in use
  ];

  plugins = {
    # Without config
    treesitter-refactor.enable = true;
    barbecue.enable = true; # That vscode style bar
    rust-tools.enable = true;
    nix.enable = true; # Not too sure
    crates-nvim.enable = true;
    cursorline.enable = true;
    # endwise.enable = true;
    nvim-autopairs.enable = true;
    rainbow-delimiters.enable = true;
    surround.enable = true; # Change surrounding delimiters
    todo-comments.enable = true;
    gitsigns.enable = true; # Git Integration
    markdown-preview.enable = true; # Markdown and Preview
    # TODO: Learn how to use this
    diffview.enable = true;
    mini.enable = true;
    comment.enable = true; # comment-nvim
    luasnip.enable = true;
    intellitab.enable = true;
    vimtex.enable = true;

    fidget.enable = true; # Notifications about lsp status
    noice.enable = true;
    marks.enable = true;
    leap.enable = true;
    # specs.enable = true;
    # Keeping this one for now. Who knows when it'll be needed?
    twilight.enable = true;
    # navbuddy.enable = true;
    # wilder.enable = true;
    # lsp-lines.enable = true;
    # nvim-ufo.enable = true; # Still randomly folding for no reason
    # treesitter-context.enable = true;
    better-escape = {
      enable = true;
      # Lots of combinations for my terrible dexterity
      mapping = [ "kj" "jk" "jj" "kk" "Kj" "KJ" "Jk" "JK" "kJ" "jK" ];
    }; # jk as escape
    project-nvim = {
      enable = true;
      enableTelescope = true;
    };
    spider = {
      enable = true;
      keymaps.motions = {
        b = "b";
        e = "e";
        ge = "ge";
        w = "w";
      };
    };
  };

  extraPlugins = with pkgs.vimPlugins; [
    lazygit-nvim
    telescope-symbols-nvim
    neorg-telescope # WARNING: Might not be necessary
    vim-wakatime
  ];
}
