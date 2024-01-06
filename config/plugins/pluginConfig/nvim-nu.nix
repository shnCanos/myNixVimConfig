{ pkgs, ... }: {

  extraPlugins = with pkgs.vimPlugins; [ nvim-nu ];

  extraConfigLua = ''
    require('nu').setup{}
  '';

  # plugins.treesitter = {
  #   languageRegister.nu = "nu";
  #   grammarPackages = with pkgs;
  #     vimPlugins.nvim-treesitter.passthru.allGrammars
  #     ++ [ tree-sitter-grammars.tree-sitter-nu ];
  # };

  filetype.extension.nu = "nu";
}
