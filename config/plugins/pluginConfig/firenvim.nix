{ pkgs, ... }: {

  extraPlugins = with pkgs.vimPlugins;
    [
      firenvim # To edit stuff in browser
    ];

  extraConfigLua = ''
    require("firenvim")

    -- vim.fn['firenvim#install'](0)
    -- This is only necessary in the first run
  '';
}
