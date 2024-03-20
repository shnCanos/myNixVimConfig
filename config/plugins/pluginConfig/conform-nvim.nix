{ ... }: {
  plugins.conform-nvim = {
    # Formatter
    enable = true;
    formatOnSave = { lspFallback = true; };
    formattersByFt = {
      lua = [ "stylua" ];
      python = [ "isort" "black" ];
      nix = [ "nixfmt" ];
      # Handled by none-ls, supposedly
      c = [
        "astyle" # "clang_format" "uncrustify"
      ];
    };
  };
}
