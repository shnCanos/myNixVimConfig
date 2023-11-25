{ ... }:

{
  plugins = {
    nvim-cmp = {
      enable = true;
      snippet.expand = "luasnip";
      sources = [
        { name = "path"; }
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "buffer"; }
        { name = "neorg"; }
      ];
    };
  };
}
