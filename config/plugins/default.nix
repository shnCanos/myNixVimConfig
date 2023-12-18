{ pkgs, ... }: {

  # With config
  imports = [
    ./pluginConfig/treesitter.nix
    ./pluginConfig/toggleterm.nix
    # ./pluginConfig/barbar.nix # Tabs
    ./pluginConfig/neotree.nix
    ./pluginConfig/conform.nix # Formatter
    ./pluginConfig/none-ls.nix # Also formatter? hmm
    ./pluginConfig/presence.nix
    ./pluginConfig/telescope.nix
    ./pluginConfig/lsp.nix
    ./pluginConfig/nvim-cmp.nix
    ./pluginConfig/notify.nix
    ./pluginConfig/oil.nix
    ./pluginConfig/undotree.nix
    ./pluginConfig/lspsaga.nix
    ./pluginConfig/neogit.nix
    ./pluginConfig/neorg.nix
    ./pluginConfig/lualine.nix
    ./pluginConfig/noice.nix
    ./pluginConfig/firenvim.nix # Continue later
  ];

  plugins = {
    # Without config
    # treesitter-context.enable = true;
    treesitter-refactor.enable = true;
    which-key.enable = true;
    auto-session.enable = true; # Recover session
    barbecue.enable = true; # That vscode style bar
    rust-tools.enable = true;
    nix.enable = true; # Not too sure
    crates-nvim.enable = true;
    cursorline.enable = true;
    endwise.enable = true;
    nvim-autopairs.enable = true;
    rainbow-delimiters.enable = true;
    surround.enable = true; # Change surrounding delimiters
    todo-comments.enable = true; # TODO Change defaults
    fidget.enable = true; # Notifications about lsp status
    gitsigns.enable = true; # Git Integration
    markdown-preview.enable = true; # Markdown and Preview
    diffview.enable = true; # TODO Learn how to use this
    mini.enable = true;
    comment-nvim.enable = true;
    better-escape.enable = true; # jk as escape
    project-nvim.enable = true;
    trouble.enable = true;
    luasnip.enable = true;
    # lsp-lines.enable = true;
    # nvim-ufo.enable = true; # For some reason, this thing is way too agressive. It folds everything.
  };

  extraPlugins = with pkgs.vimPlugins; [ lazygit-nvim telescope-symbols-nvim ];
}
