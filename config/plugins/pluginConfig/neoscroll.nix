{ pkgs, ... }:

{
  plugins.neoscroll = {
    enable = true;

    settings = {
      cursor_scrolls_alone = true;
      performanceMode = true;
      easing_function = "circular";
      hide_cursor = true;
      mappings =
        [ "<C-u>" "<C-d>" "<C-b>" "<C-f>" "<C-y>" "<C-e>" "zt" "zz" "zb" ];
      respect_scrolloff = false;
      stop_eof = true;
    };
  };
  extraConfigLua = ''
    local t = {}
    -- Syntax: t[keys] = {function, {function arguments}}
    t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '25'}}
    t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '25'}}
    t['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '200'}}
    t['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '200'}}
    t['<C-y>'] = {'scroll', {'-0.10', 'false', '100'}}
    t['<C-e>'] = {'scroll', { '0.10', 'false', '100'}}
    t['zt']    = {'zt', {'250'}}
    t['zz']    = {'zz', {'250'}}
    t['zb']    = {'zb', {'250'}}

    require('neoscroll.config').set_mappings(t)
  '';
}
