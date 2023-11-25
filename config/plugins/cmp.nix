{ ... }:

{
  plugins = {
    nvim-cmp = {
      enable = true;
      snippet.expand = "luasnip";
    };
    # Dependencies
    luasnip.enable = true;

    # CMP
    cmp-buffer.enable = true;
    cmp-calc.enable = true;
    cmp-clippy.enable = true;
    cmp-cmdline.enable = true;
    cmp-cmdline-history.enable = true;
    cmp-conventionalcommits.enable = true;
    cmp-dap.enable = true;
    cmp-dictionary.enable = true;
    cmp-digraphs.enable = true;
    cmp-emoji.enable = true;
    # cmp-fish.enable = true;
    cmp-fuzzy-buffer.enable = true;
    cmp-fuzzy-path.enable = true;
    cmp-git.enable = true;
    cmp-greek.enable = true;
    cmp-latex-symbols.enable = true;
    cmp-look.enable = true;
    cmp-npm.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-nvim-ultisnips.enable = true;
    cmp-omni.enable = true;
    cmp-pandoc-nvim.enable = true;
    cmp-pandoc-references.enable = true;
    cmp-path.enable = true;
    cmp-rg.enable = true;
    cmp-snippy.enable = true;
    cmp-spell.enable = true;
    # cmp-tabnine.enable = true;
    cmp-tmux.enable = true;
    cmp-treesitter.enable = true;
    cmp-vim-lsp.enable = true;
    cmp-vimwiki-tags.enable = true;
    cmp-vsnip.enable = true;
    cmp-zsh.enable = true;
    cmp_luasnip.enable = true;
    # << CMP
  };
}
