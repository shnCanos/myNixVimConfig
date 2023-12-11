{ ... }: {
  plugins.lspsaga.enable = true;
  keymaps = let cmd = command: "<cmd>${command}<cr>";
  in [
    {
      key = "K";
      options.desc = "Lsp Hover";
      action = cmd "Lspsaga hover_doc";
    }
    {
      key = "<leader>ca";
      options.desc = "Lsp Code Actions";
      action = cmd "Lspsaga code_action";
    }
    {
      key = "<leader>cf";
      options.desc = "Lsp Find";
      action = cmd "Lspsaga finder";
    }
    {
      key = "<leader>c.";
      options.desc = "Lsp Hover";
      action = cmd "Lspsaga hover_doc";
    }
    {
      key = "<leader>cr";
      options.desc = "Lsp Rename";
      action = cmd "Lspsaga rename";
    }
    {
      key = "<leader>cp";
      options.desc = "Lsp Show Definition";
      action = cmd "Lspsaga peek_definition";
    }
    {
      key = "<leader>cd";
      options.desc = "Lsp Goto Definition";
      action = cmd "Lspsaga goto_definition";
    }
    {
      key = "<leader>cl";
      action = cmd "LspInfo";
      options.desc = "Show LSP info";
    }
    {
      key = "<leader>cI";
      action = cmd "LspInfo";
      options.desc = "Show LSP info";
    }
  ];
}
