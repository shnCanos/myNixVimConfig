{ ... }: {
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        deadnix.enable = true;
        cppcheck.enable = true;
        cmake_lint.enable = true;
        # gccdiag.enable = true; #hmm
      };
      formatting = {
        nixfmt.enable = true;
        black.enable = true;
        # rustfmt.enable = true; # Deprecated
        shfmt.enable = true;
        isort.enable = true;
        markdownlint.enable = true;
        # astyle.enable = true;
      };
    };
  };
}
