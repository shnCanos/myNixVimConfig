{ ... }:
let cmd = command: "<cmd>${command}<cr>";
in [
  {
    key = "<leader>cr";
    action = cmd "lua vim.lsp.buf.rename()";
    # lua = true; # ???
    options.desc = "Lsp Rename";
  }
  {
    key = "<leader>cl";
    action = cmd "LspInfo";
    options.desc = "Show LSP info";
  }
]
