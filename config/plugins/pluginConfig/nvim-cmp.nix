{ ... }: {
  enable = true;
  snippet.expand = "luasnip";
  sources = [
    { name = "path"; }
    { name = "nvim_lsp"; }
    { name = "luasnip"; }
    { name = "buffer"; }
    { name = "neorg"; }
  ];

  mapping = {
    # SELECTION
    "<C-n>" =
      "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert })";
    "<C-p>" =
      "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })";
    "<C-j>" =
      "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert })";
    "<C-k>" =
      "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })";
    # << SELECTION

    # DOCS
    "<C-b>" = "cmp.mapping.scroll_docs(-4)";
    "<C-f>" = "cmp.mapping.scroll_docs(4)";
    "<C-s-k>" = "cmp.mapping.scroll_docs(-4)";
    "<C-s-j>" = "cmp.mapping.scroll_docs(4)";
    # << DOCS

    # COMPLETION
    "<C-Space>" = "cmp.mapping.complete()";
    "<C-Tab>" = "cmp.mapping.complete()"; # Rarely used?
    "<Tab>" = "cmp.mapping.confirm( { select = true })";
    # << COMPLETION

    # OTHER
    "<C-e>" = "cmp.mapping.abort()";
    "<c-CR>" = "cmp.mapping.confirm({ select = true })";
    # << OTHER

    # Probably not going to be used
    "<S-CR>" = ''
      cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Replace,
              select = true,
            })'';
  };
}
