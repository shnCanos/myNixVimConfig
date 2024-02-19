{ ... }: {
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        deadnix.enable = true;
        cppcheck.enable = true;
      };
      formatting = {
        nixfmt.enable = true;
        black.enable = true;
        rustfmt.enable = true;
        shfmt.enable = true;
        isort.enable = true;
        markdownlint.enable = true;
        astyle.enable = true;
      };
    };
  };
}
