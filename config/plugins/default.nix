{ pkgs, ... }: {

  # With config
  imports = [
    # ./pluginConfig/treesitter.nix
    ./pluginConfig/toggleterm.nix
    # ./pluginConfig/barbar.nix # Tabs (I don't use tabs)
    ./pluginConfig/neotree.nix
    # ./pluginConfig/conform.nix # Formatter
    # ./pluginConfig/none-ls.nix # Also formatter? hmm
    ./pluginConfig/presence.nix
    ./pluginConfig/telescope.nix
    ./pluginConfig/lsp.nix
    ./pluginConfig/nvim-cmp.nix
    ./pluginConfig/oil.nix
    ./pluginConfig/undotree.nix
    ./pluginConfig/lspsaga.nix
    ./pluginConfig/neogit.nix
    ./pluginConfig/neorg.nix
    # ./pluginConfig/lualine.nix
    # ./pluginConfig/noice.nix
    # ./pluginConfig/firenvim.nix # Cool, but not in use
    ./pluginConfig/alpha.nix
    ./pluginConfig/which-key.nix
  ];

  plugins = {
    # Without config
    # treesitter-context.enable = true;
    treesitter-refactor.enable = true;
    barbecue.enable = true; # That vscode style bar
    rust-tools.enable = true;
    nix.enable = true; # Not too sure
    crates-nvim.enable = true;
    cursorline.enable = true;
    endwise.enable = true;
    nvim-autopairs.enable = true;
    rainbow-delimiters.enable = true;
    surround.enable = true; # Change surrounding delimiters
    # TODO: Change defaults (what did I mean by this?)
    todo-comments.enable = true;
    gitsigns.enable = true; # Git Integration
    markdown-preview.enable = true; # Markdown and Preview
    # TODO: Learn how to use this
    diffview.enable = true;
    mini.enable = true;
    comment-nvim.enable = true;
    better-escape.enable = true; # jk as escape
    project-nvim.enable = true;
    trouble.enable = true;
    # luasnip.enable = true;
    # noice.enable = true;
    # lsp-lines.enable = true;
    # nvim-ufo.enable = true; # For some reason, this thing is way too agressive. It folds everything.

    # Recover session
    auto-session = {
      enable = true;
      autoRestore.enabled = false;
      autoSave.enabled = true;
      bypassSessionSaveFileTypes = [ "alpha" ];
    };

    notify = {
      enable = true;
      # backgroundColour = "#000000";
      timeout = 1000; # I don't know why
      topDown = true; # It looks terrible with false
      stages = "slide";
    };

    treesitter = {
      enable = true;
      indent = true;
      nixvimInjections = true;
    };

    none-ls = {
      enable = true;
      sources = {
        formatting = {
          nixfmt.enable = true;
          black.enable = true;
          rustfmt.enable = true;
          shfmt.enable = true;
          isort.enable = true;
          markdownlint.enable = true;
        };
      };
    };

    lualine = {
      enable = true;
      sections = {
        lualine_x = [
          # {
          #   name = ''
          #     require("noice").api.statusline.mode.get,
          #     cond = require("noice").api.statusline.mode.has,
          #     color = { fg = "#ff9e64" },
          #   '';
          # }
          "encoding"
          "fileformat"
          "filetype"
        ];
        lualine_z = [ ''" " .. os.date("%R")'' ];
        lualine_c = [ "filename" ];
      };
    };

    conform-nvim = {
      # Formatter
      enable = true;
      formatOnSave = { lspFallback = true; };
      formattersByFt = {
        lua = [ "stylua" ];
        python = [ "isort" "black" ];
        nix = [ "nixfmt" ];
      };
    };

    barbar = {
      enable = false; # I do not use tabs
      autoHide = true;
      keymaps = {
        pin = "<leader>bp";
        pick = "<leader>bf";
        movePrevious = "<C-h>";
        moveNext = "<C-l>";
      };
    };

    # Notifications about lsp status
    fidget = {
      enable = false;
      # They removed this haha
      # align.bottom = false;
    };
  };

  extraPlugins = with pkgs.vimPlugins; [
    lazygit-nvim
    telescope-symbols-nvim
    neorg-telescope # WARNING: Might not be necessary
  ];
}
