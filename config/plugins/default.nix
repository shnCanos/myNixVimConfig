{ ... }:

{
  imports = [ ./pluginConfig ];

  plugins = {
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
    undotree.enable = true;
    lualine.enable = true; # Maybe add configuration later?
    neogit.enable = true; # git stuff
    luasnip.enable = true;
    lspsaga.enable = true;
    # lsp-lines.enable = true;
  };

}
