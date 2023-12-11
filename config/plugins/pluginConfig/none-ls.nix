{ ... }:

{
  plugins.none-ls = {
    enable = true;
    sources = {
      formatting = {
        nixfmt.enable = true;
        black.enable = true;
        rustfmt.enable = true;
        shfmt.enable = true;
        isort.enable = true;
        markdownlint.enable = true;
      };
    };
  };
}
