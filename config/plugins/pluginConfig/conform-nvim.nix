{ pkgs, ... }: {
  plugins.conform-nvim = {
    # Formatter
    enable = true;
    formatOnSave = { lspFallback = true; };
    # formatters.good-astyle = {
    #   command = "astyle";
    #   prepend_args = [ "--indent=tab=2" ];
    # };

    formattersByFt = {
      lua = [ "stylua" ];
      python = [ "isort" "black" ];
      nix = [ "nixfmt" ];
      # Handled by none-ls, supposedly
      c = [
        # "good-astyle" # "clang_format" "uncrustify"
        "astyle"
      ];
    };
  };
}
