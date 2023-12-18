{ pkgs, ... }: {

  extraPlugins = with pkgs.vimPlugins;
    [
      firenvim # To edit stuff in browser
    ];

  extraConfigLua = ''
    require("firenvim")

    -- vim.fn['firenvim#install'](0)
    -- Is this necessary? I don't think so
  '';
}
